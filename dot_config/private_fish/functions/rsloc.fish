function rsloc
    set -f HELPSTR 'rsync...[SOURCEDIR] [TARGETDIR]'
    if test "$argv" = -h || test "$argv" = --help
        echo $HELPSTR
        return
    end
    set SOURCE $argv[1]
    set SOURCE_TRIM (string trim -r -c / $SOURCE)
    set TARGET $argv[2]
    echo rsync: $SOURCE '->' $TARGET
    rsync -ah --info=progress2 $SOURCE_TRIM $TARGET
end
