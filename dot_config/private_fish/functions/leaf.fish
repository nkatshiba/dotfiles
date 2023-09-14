function leaf
    set uname nkatshiba@proton.me
    set pw z/leaf_pw

    pass -c $pw | wl-copy -n
    echo $uname | wl-copy -n
end
