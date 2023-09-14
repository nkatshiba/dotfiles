function bf
    clear
    echo "# batgrep <REGEX/MATCH> <DIR/FP>"
    echo '> bf:' $argv[1] '@' $argv[2]
    batgrep $argv
end
