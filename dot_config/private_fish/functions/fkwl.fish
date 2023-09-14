function fkwl
    set -f fzfop $(history -n 10 | fzf)
    commandline -r "wlcc $fzfop"
end
