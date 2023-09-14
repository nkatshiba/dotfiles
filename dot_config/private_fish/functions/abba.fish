function abba
    set -f abba_fp $HOME/.config/fish/conf.d/abbrs.fish
    set -f abba_contents (cat $abba_fp)
    set -f abba_tmp (mktemp)

    echo $abba_contents >$abba_tmp
    echo $abba_tmp

    nvim $abba_fp

    chezmoi add $abba_fp
    echo "Added $abba_fp to chezmoi :)"

end
