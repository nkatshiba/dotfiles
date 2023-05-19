# System specific functions
abbr -a rmrf 'rm -rfi'
abbr -a :q exit

# wl-clipboard
abbr -a wlc 'wl-copy -n'
abbr -a wl-copy 'wl-copy -n'
abbr -a wlp wl-paste

# bat
abbr -a cat bat

# abbr -a bf "clear && batgrep $argv  # batgrep <ACTION> <DIR/FP>"
abbr -a bd batdiff
abbr -a diff 'git diff'
abbr -a man batman
# abbr -a rg batgrep
abbr -a grep rg

# LS / LSD
abbr -a ls lsd
abbr -a lss 'clear && lsd *'
abbr -a ls1 'lsd -1'
abbr -a lsa 'lsd -a'
abbr -a exg 'lsd -al | grep'
abbr -a lsl 'lsd -l'
abbr -a lst 'clear && lsd --tree'
abbr -a lsta 'lsd -a --tree'
abbr -a ls2 'lsd --tree --depth 1'
abbr -a ls3 'lsd --tree --depth 2'
abbr -a ls4 'lsd --tree --depth 3'
abbr -a lsa2 'lsd -a --tree --depth 1'
abbr -a lsa3 'lsd -a --tree --depth 2'
abbr -a lsa4 'lsd -a --tree --depth 3'
abbr -a lsss 'lsd -l --total-size --sizesort'
abbr -a lsat 'clear && lsd -a --tree'

# Source / Reloading
abbr -a wbr 'nohup waybar -c config -s style.css > /dev/null 2>&1 &'

# PS
abbr -a psm10 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -10'
abbr -a psm50 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -50'
abbr -a psc10 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%cpu | head -10'
abbr -a psc50 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%cpu | head -50'

# Navigation
abbr -a dlds 'cd ~/Downloads/'
abbr -a docs 'cd ~/Documents/'
abbr -a pics 'cd ~/Pictures/'
abbr -a desk 'cd ~/Desktop/'
abbr -a nts 'cd ~/nts/'
abbr -a prts 'cd ~/Pictures/screens'
abbr -a ... 'cd ../../'
abbr -a .... 'cd ../../../'
abbr -a xx 'cd ~/.6x/ && clear && ls -a'
abbr -a pp 'vi ~/.6x/.pp.md'
abbr -a play 'clear && cd $HOME/src/PLAYGROUND/ && ls'
abbr -a src 'cd ~/src/'
abbr -a mlv mullvad
abbr -a c 'cd $HOME/.config/'

# Apps
abbr -a ccat 'command cat'
abbr -a caa hyprpicker
abbr -a kalk kalker-linux
abbr -a jj z
abbr -a j z
abbr -a tt timetrace
abbr -a du dust
abbr -a cod berg
abbr -a mongo mongotimer
abbr -a imvf 'imv -drf '
abbr -a nwg nwg-look

# Echoes
abbr -a epath 'echo $PATH'

# Git
abbr -a gcm 'git commit -m'
# abbr -a gp 'git push -u origin'
abbr -a gpu 'git push'
abbr -a gs 'git status -s'
abbr -a gss 'git status'
abbr -a grp 'git pull --rebase'
abbr -a ga 'git add'
abbr -a gaa 'git add .'
abbr -a gd 'git diff'
abbr -a grm 'git rm'
abbr -a gcl 'git clone'
abbr -a gf 'git fetch'
abbr -a gb 'git branch'
abbr -a gcma 'git commit --amend -m' # Rename last commit
abbr -a grmd 'git rm $(git ls-files --deleted)' # Remove deleted files from both index and working dir
abbr -a gl 'git log --oneline'
abbr -a gla 'git log --oneline --all'
abbr -a gc 'git checkout'
abbr -a grc 'git reset --soft HEAD~1' # Undo last commit
abbr -a gra 'git reset' # Undo last add command (All or file)
abbr -a gr 'git restore'
abbr -a gmv 'git mv'
abbr -a gbl 'git branch --list'
abbr -a gbi 'git bisect'

# Poetry
abbr -a por 'poetry run python'
abbr -a paa 'poetry run python main.py'

# Chezmoi
abbr -a cm chezmoi
abbr -a cme 'chezmoi edit'
abbr -a ce 'chezmoi edit'
abbr -a cma 'chezmoi add'
abbr -a cmappv 'chezmoi apply -v'
abbr -a cmapp 'chezmoi apply'
abbr -a cmcd 'chezmoi cd'
abbr -a cmdi 'chezmoi diff'
abbr -a vii 'chezmoi edit'
abbr -a cms 'chezmoi status'

# Tree
abbr -a tree1 'tree -L 1'
abbr -a tree2 'tree -L 2'
abbr -a tree3 'tree -L 3'

# SHELL / TERMINAL
abbr -a f fish
abbr -a qq exit
abbr -a h2 "eval (history | head -n2 | tail -n1 | sed 's/^[ ]*[0-9]*[ ]*//')"
abbr -a hh "commandline -i (history | head -n2 | tail -n1 | sed 's/^[ ]*[0-9]*[ ]*//')"

# Pacman / Yay
#abbr -a yay yayy

# Dos
abbr -a dos pass -c 000/dosen/dos/URI/prvt/dos1

# Pass
abbr -a passl 'clear && pass ls'
abbr -a passm pass mv
abbr -a passr pass rm
abbr -a passf pass find
abbr -a passc pass cp
abbr -a passi pass insert
abbr -a passg pass git
abbr -a passh pass help
abbr -a pac 'pass -c'

# Convert
abbr -a convertzip 'convert -density 150 -compress Zip'
abbr -a czip 'convert -density 150 -compress Zip'

# SSH
abbr -a sshnkat ssh root@174.138.101.143

# ALMA
abbr -a alma 'cd /home/abty/src/python/ALMA/Alma-bachelor-project'

# Unsorted
abbr -a mwa mongotimer
abbr -a mti 'mongotimer -e '
abbr -a mdt "mdt --prompt MDT: --color #f2c2d2"
abbr -a cell celluloid
abbr -a ww 'killall waybar && sleep 0.2 && hyprctl dispatch exec waybar && clear && echo "exec waybar at: ---" (date +'%H:%M')'
