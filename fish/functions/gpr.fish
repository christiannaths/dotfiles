function gpr --description "Push current branch to origin and set upstream"
	git rev-parse --git-dir >/dev/null 2>&1; or return

	set -l branch (git symbolic-ref --short HEAD 2>/dev/null)
	or begin
		echo "gpr: not on a branch" >&2
		return 1
	end

	git push --set-upstream origin $branch $argv
end
