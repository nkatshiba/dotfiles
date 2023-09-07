#!/usr/bin/fish

set -f REDDIT 'https://old.reddit.com/r/sportsbook/search/?q=of+the+Day&sort=relevance&restrict_sr=on&t=day'
set -f LEO 'https://www.leovegas.com/sv-se/logga-in?view=loginRegular'

qutebrowser --target window $LEO ":open -t $REDDIT"
