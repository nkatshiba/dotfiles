function moth
    # AUTH
    set TOKEN agqrt8pxxqccxv9tbtrf3zotxkfdso
    set USER gz4wqueodx2ms2yvdn2tj64wzrcz11

    # MSGs
    set MSG $argv[2]
    set URI_MSG $argv[2]

    # URLs
    set URI $argv[1]
    set API https://api.pushover.net/1/messages.json

    # DO
    curl -s --form-string token=$TOKEN --form-string user=$USER --form-string message=$MSG --form-string url=$URI --form-string url_title=$URI_MSG $API
end
