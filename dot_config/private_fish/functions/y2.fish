# function y2
#
#     set -f URL "$argv[1]"
#     set -f TARGET "-o $argv[2]"
#     set -f EXTERNAL axel
#     set -f NCC "-n 12"
#
#     yt-dlp --external-downloader $EXTERNAL --external-downloader-args $NCC $TARGET $URL
#
# end

function y2

    clear && sleep 0.2

    read -l -P "Enter the URL> " URL
    read -l -P "Enter the TARGET NAME> " TARGET
    read -l -P "Enter the number to append after -n> " NCC_NUMBER

    set -l FILE_NAME "$TARGET.mp4"
    set -l NCC "-n $NCC_NUMBER"
    set -f EXTERNAL axel

    #     yt-dlp --external-downloader $EXTERNAL --external-downloader-args $NCC $TARGET $URL
    yt-dlp --external-downloader "$EXTERNAL" --external-downloader-args $NCC -o $FILE_NAME $URL

end
