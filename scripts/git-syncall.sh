#!/bin/sh

set -eu

git fetch --prune

current="$(git symbolic-ref --quiet --short HEAD 2>/dev/null || true)"
remote="$(git remote | head -n1)"
default="$(git symbolic-ref --quiet --short "refs/remotes/$remote/HEAD" 2>/dev/null | sed "s#^$remote/##")"

for branch in $(git branch --list | sed 's/^..//'); do
  upstream="$(git rev-parse --abbrev-ref "$branch@{upstream}" 2>/dev/null || true)"

  if [ -n "$upstream" ] && git show-ref --verify --quiet "refs/remotes/$upstream"; then
    if git merge-base --is-ancestor "$branch" "$upstream" && ! git merge-base --is-ancestor "$upstream" "$branch"; then
      if [ "$branch" = "$current" ]; then
        git merge --ff-only "$upstream" >/dev/null
        echo "Updated $branch"
      else
        git update-ref "refs/heads/$branch" "refs/remotes/$upstream"
        echo "Updated $branch"
      fi
    fi
    continue
  fi

  if [ -n "$upstream" ] && [ -n "$default" ] && git show-ref --verify --quiet "refs/remotes/$remote/$default"; then
    if git merge-base --is-ancestor "$branch" "refs/remotes/$remote/$default"; then
      if [ "$branch" = "$current" ]; then
        git checkout "$default" >/dev/null
        current="$default"
      fi
      git branch -D "$branch" >/dev/null
      echo "Deleted $branch (upstream gone, already merged)"
    else
      echo "Warning: $branch has gone upstream but is not merged into $default"
    fi
  fi
done
