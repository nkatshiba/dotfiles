function kbkb
    set arg $argv
    set argu $(echo $arg | string upper)
    echo '> keybind: '$argu
    batgrep $argu, /home/xshiba/.config/hypr/
end
