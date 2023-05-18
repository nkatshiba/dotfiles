function yaya --wraps=paru
    set -f params $argv
    set -f macfile ~/yayy_mac.txt
    paru $params

    echo $params >>$macfile
    chezmoi add $macfile
    echo "$params > $macfile added to chezmoi :)"

end
