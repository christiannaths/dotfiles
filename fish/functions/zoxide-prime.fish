function zoxide-prime --description "Preload zoxide with ~/Projects/*/* directories"
    for dir in ~/Projects/*/*
        if test -d $dir
            zoxide add $dir
        end
    end
    echo "Zoxide initialized with "(count ~/Projects/*/*)" project directories"
end
