function gbr --description "Select and check out a local git branch"
	git rev-parse --git-dir >/dev/null 2>&1; or return

	set -l tab (printf '\t')
	set -l fmt "%(HEAD)$tab%(refname:short)$tab%(committerdate:relative)$tab%(contents:subject)"
	set -l reformat 'BEGIN { FS = "\t" } {
		msg = $4
		for (i = 5; i <= NF; i++) msg = msg "\t" $i
		is_current = ($1 == "*")
		prefix = is_current ? "* " : "  "
		suffix = is_current ? " (current)" : ""
		printf "%s%-28s  %-18s  %.60s%s\n", prefix, $2, $3, msg, suffix
	}'

	set -l selection (
		git for-each-ref --sort=-committerdate refs/heads/ --format=$fmt \
			| awk "$reformat" \
			| fzf --height=50% --reverse --prompt="checkout › "
	)
	or return

	git checkout (echo $selection | awk '{ print ($1 == "*") ? $2 : $1 }')
end
