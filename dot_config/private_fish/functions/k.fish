function k
    set cfgpath "$HOME/.config/"
    switch $argv[1]
        case f
            set cmd fish
        case fc
            set cmd fish/conf.d
        case ff
            set cmd fish/functions
        case w
            set cmd waybar
        case ws
            set cmd waybar/scripts
    end

    cd $cfgpath$cmd
end
