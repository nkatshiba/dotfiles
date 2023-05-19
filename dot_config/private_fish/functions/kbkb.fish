function kbkb
    set arg $(echo $argv | string upper)
    echo '> key: '$arg
    set reg '(\s|^)'$arg','
    echo '> regex: '$reg
    batgrep -i $reg /home/xshiba/.config/hypr/
end
