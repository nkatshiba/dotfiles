function tp
    set POS 'commandline -C'
    set CMD 'echo "'
    set APND '" | wl-copy -n'

    commandline $CMD
    commandline -a $APND
end
