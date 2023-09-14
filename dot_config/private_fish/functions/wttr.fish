function wttr

  set -f locations "Fuengirola" "Malmö" "Göteborg"


  curl wttr.in/$locations[1]\?format="C:+%c+\n+%t\nF:+%f\n%w\n%z"

end

