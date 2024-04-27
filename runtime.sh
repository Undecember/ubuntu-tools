RUNTIME_PATH="$HOME/.ubuntu-tools"

ut () {
    cat "$RUNTIME_PATH/man/ut"
}

chm2u () {
    counter=0
    basename=".dummy"
    while true; do
        dummyname="$basename$counter"
        if [ ! -f "$dummyname" ]; then
            break
        else
            ((counter++))
        fi
    done

    mkdir "$dummyname"
    find . -type d -exec chmod --reference="./$dummyname" '{}' \;
    rm -rf "$dummyname"
    touch "$dummyname"
    find . -type f -exec chmod --reference="./$dummyname" '{}' \;
    rm -rf "$dummyname"
}
