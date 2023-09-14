function _1
 set IP (cat $HOME/.ip_tildawebde01.txt)
 ssh shiba@$IP -t "sh -c 'if which fish >/dev/null ; then exec fish -li; else exec \$SHELL -li; fi'"
end
