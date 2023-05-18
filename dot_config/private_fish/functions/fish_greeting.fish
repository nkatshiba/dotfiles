# function fish_greeting
#
#    set -f dates date +'%d-%m-%y'
#    set -f times date +'%H:%M'
#    set -f both date +'%d-%m-%y - %H:%M'
#
#    ip -4 addr show | awk '/inet /{print $NF,$2}'
#    curl https://am.i.mullvad.net
#    curl https://ipv4.am.i.mullvad.net --socks5-hostname 10.64.0.1
#    curl https://am.i.mullvad.net/connected
#
#    tmux list-sessions
#    echo $gstr $(wl-paste)
#    eval $cm
#
# end

function fish_greeting

    set -g date (date +'%d-%m-%y')
    set -g time (date +'%H:%M')
    set -g datetime (date +'%d-%m-%y - %H:%M')

    # echo "pub:" (curl -s https://am.i.mullvad.net)
    # command mullvad status

    # echo ">" (curl -s https://am.i.mullvad.net/connected)
    echo " >" (curl -s https://am.i.mullvad.net)
    echo "  > socks5 (10.64.0.1) IP is" (curl -s https://ipv4.am.i.mullvad.net --socks5-hostname 10.64.0.1)

    echo " @ "$date - $time
end


#function fish_greeting
#    set -g date (date +'%d-%m-%y')
#    set -g time (date +'%h:%m')
#    set -g datetime (date +'%d-%m-%y - %h:%m')
#
# echo $fsh (ip -4 addr show | awk '/inet /{print $nf,$1}')
# echo $parrot
# echo "Local IPs:"
#    function display_local_ip
#        echo "lcl:" (ip -4 addr show | awk '/inet /{print $nf,$2}')
#    end
#
#    function display_public_ip
#        echo "pub:" (curl -s https://am.i.mullvad.net)
#    end
#
#    function display_socks5_wg
#        echo "socks5 (wg):" (curl -s https://ipv4.am.i.mullvad.net --socks5-hostname 10.64.0.1)
#    end
#
#    function display_mullvad_status
#        command mullvad status
#    end
#
#    for display_func in display_local_ip display_public_ip display_socks5_wg display_mullvad_status
#        echo -e "\n"
#        $display_func
#    end
#
#    echo -e "\n$datetime"
#end
