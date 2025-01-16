

# Check if the chance is within the 70% range
info="Commit: $(date)"

 echo "OS detected: $OSTYPE"

cd "$(dirname "$0")" || exit 1

echo "$info Commit" >> output.txt
echo "$info"

branch=$(git rev-parse --abbrev-ref HEAD)
echo "$branch"

git add output.txt
git commit -m "Commit $info"
git push origin "$branch"