function ks
    set -f filename $argv
    set -f screenpath $HOME/Pictures/screens/
    grim -g "$(slurp)" "$screenpath$filename.png"
    nohup imv $screenpath$filename.png >/dev/null 2>&1 &
    echo "Img saved to > $screenpath$filename.png"
end
