function __ssh_load_ssh_keys.fish
    set added_keys (ssh-add -l)
    for key in (find ~/.ssh/ -not -name "*.pub" -a -iname "*ed25519")
        set sign (ssh-keygen -lf $key |awk '{print $2}')
        if test ! (echo $added_keys | grep -o -e $sign)
            ssh-add -l
            ssh-add "$key"
        else
            echo "$key already added"
        end
    end
end
