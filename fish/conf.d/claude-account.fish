function __claude_set_account --on-variable PWD --description "Select Claude Code account by project"
    set -l d (pwd)
    if test "$d" = "/Users/christiannaths/Projects/navrate"; or string match -q "/Users/christiannaths/Projects/navrate/*" -- $d
        set -gx CLAUDE_CONFIG_DIR "$HOME/.claude-subscriptions/navrate"
    else
        set -e CLAUDE_CONFIG_DIR
    end
end

__claude_set_account
