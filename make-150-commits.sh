#!/bin/bash
echo "🚀 Creating 150 commits..."

for i in {1..150}
do
  DATE=$(date -u -d "$((RANDOM % 240)) days ago" "+%Y-%m-%d %H:%M:%S")
  echo "Base Guild Commit #$i" >> guild-progress.log
  git add .
  GIT_AUTHOR_DATE="$DATE" GIT_COMMITTER_DATE="$DATE" git commit -m "feat: base guild commit #$i" --quiet
  echo "✅ Commit $i/150 done"
done
echo "🎉 Finished!"
