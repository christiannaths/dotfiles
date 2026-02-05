function xzip --description "Create a cross-platform zip archive of a folder"
    if test (count $argv) -ne 1
        echo "Usage: xzip <folder>"
        return 1
    end

    set folder (string trim --right --chars='/' $argv[1])

    if not test -d $folder
        echo "Error: '$folder' is not a directory"
        return 1
    end

    set archive_name (basename $folder).zip
    set parent_dir (dirname $folder)
    set folder_name (basename $folder)
    set output_path (pwd)/$archive_name

    pushd $parent_dir
    zip -r -X "$output_path" $folder_name -x "*.DS_Store" -x "__MACOSX"
    popd
end
