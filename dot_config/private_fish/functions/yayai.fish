function yayai --wraps paru
    set -f params $argv
    paru -Si $params

end
