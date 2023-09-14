function yayas --wraps paru
    set -f params $argv
    paru -Ss $params

end
