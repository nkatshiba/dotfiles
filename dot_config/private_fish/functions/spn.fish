function spn
    # AUTH
    set TOKEN avhq7fe9vkh4vx2x72ssrhe76zc9jq
    set USER urozvtcaxcykiqc5g58xhmv78asj6s

    # MSGs
    set MSG $argv[2]
    set URI_MSG $argv[2]

    # URLs
    set URI $argv[1]
    set API https://api.pushover.net/1/messages.json

    # DO
    curl -s --form-string token=$TOKEN --form-string user=$USER --form-string message=$MSG --form-string url=$URI --form-string url_title=$URI_MSG $API
end
