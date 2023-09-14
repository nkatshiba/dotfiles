function cur

    set APP currencyConverter
    set ARG $argv

    # set PRICE $argv[1]
    set PRICE $argv[1]
    set FROM $argv[2]
    set TO $argv[3]
    set VAT_PER 0.25
    set VAT (math $PRICE \* $VAT_PER)
    set NET (math $PRICE + $VAT)

    # $APP $PRICE $FROM $TO

    # Special case
    set FROM usd
    set TO sek
    set DIV_L ---------------------
    set DIV_S "*********************"
    set DIV_T "^^^^^^^^^^^^^^^^^^^^^"

    # Kemikalieskatt elektronik (160 SEK/Kilogram max 489 SEK/st.)
    set KEMSKATT 320
    set RATE 11.05
    set PRICE_IN_SEK (math $PRICE \* $RATE)
    set VAT_IN_SEK (math $VAT \* $RATE)
    set NET_IN_SEK (math $NET \* $RATE)
    set NET_WITH_KS (math $NET_IN_SEK + $KEMSKATT)
    # set USD_

    # $APP $PRICE $FROM $TO
    $APP 1 $FROM $TO

    echo $DIV_T
    echo -e "PRICE:\t$PRICE\t( \$ )"
    echo -e "VAT:\t$VAT\t( \$ )"
    echo -e "NET:\t$NET\t( \$ )"

    echo $DIV_L
    echo -e "PRICE:\t$PRICE_IN_SEK\t( kr )"
    echo -e "VAT:\t$VAT_IN_SEK\t( kr )"
    echo -e "NET:\t$NET_IN_SEK\t( kr )"

    echo $DIV_T
    echo -e "NET:\t$NET\t( \$ )"
    echo -e "NET:\t$NET_IN_SEK\t( kr )"
    echo -e "NET+KS:\t$NET_WITH_KS\t( kr )"

end
