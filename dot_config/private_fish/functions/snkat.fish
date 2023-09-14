function snkat 

  set IP (cat $HOME/.ip_tildawebde01.txt)

  switch $argv[1]

    case root
      set USER root
    case '*'
      set USER shiba
  end

  switch $argv[2]
    case v1
      set flags "-v"
    case v2
      set flags "-vv"
    case v3
      set flags "-vvv"
    case '*'
      set flags ""
  end

  ssh $USER@$IP -t "sh -c 'if which fish >/dev/null ; then exec fish -li; else exec \$SHELL -li; fi'" $flags

end

