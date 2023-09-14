function xxx -d "Store a URL in a file with today's date"
    set -l url $argv[1]
    set -l date (date +%Y-%m-%d)
    set -l fp ~/6x/.6x/

    echo $url >>$fp.$date
    set old $PWD
    cd /home/xshiba/6x/.6x/.movs
    clear
    echo "Stored $url in file $fp.$date"
    echo $old | wl-copy -n
    lsd --human-readable --all --timesort --long --date relative -A

end
