function ca
    set caval $(hyprpicker)
    echo $caval | wl-copy -n
    cols $caval
    echo $caval
end
