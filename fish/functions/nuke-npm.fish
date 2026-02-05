function nuke-npm --description "Recursively find and delete node_modules folders"
    if test (count $argv) -ne 1
        echo "Usage: nuke-npm <directory>"
        return 1
    end

    set target $argv[1]

    if not test -d $target
        echo "Error: '$target' is not a directory"
        return 1
    end

    set folders (find $target -type d -name "node_modules" -prune 2>/dev/null)

    if test (count $folders) -eq 0
        echo "No node_modules folders found"
        return 0
    end

    echo "Found "(count $folders)" node_modules folder(s):"
    for folder in $folders
        echo "  $folder"
    end

    read -l -P "Delete all? [y/N] " confirm
    if test "$confirm" = "y" -o "$confirm" = "Y"
        for folder in $folders
            rm -rf $folder
            echo "Deleted $folder"
        end
    else
        echo "Aborted"
    end
end
