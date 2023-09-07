function rk
    # Vars
    set OBJ $argv[1]
    set eSTR "!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@"
    # Post
    if test -e $OBJ
        # Cmd
        rip $OBJ
        clear

        # Post Cmd
        echo $eSTR
        lsd
        echo $eSTR
        echo ""
        echo "rip>" $OBJ
        echo ""
    else
        echo "FILE/DIR DOES NOT EXIST!"
    end
end
