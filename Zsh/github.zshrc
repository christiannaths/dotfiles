function gh-cleanup-runs() {
  gh run list --limit 1000 --json databaseId | jq -r '.[].databaseId' | xargs -I {} gh run delete {}
}
