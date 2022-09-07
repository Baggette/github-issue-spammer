#!/usr/bin/env bash
if ! command -v gh > /dev/null; then
        echo "gh command not found, please install gh"
        exit 1
fi

printf "Have you configured gh yet? y/n "
read y
if [ "$y" != "y" ]; then
        echo "It is recommended to have a personal access token ready"
        sleep 2
        gh auth login
        sleep 2
        echo "Please rerun the script"
        sleep 2
elif [ "$y" = "y" ]; then
        while true
        do
            gh issue create --repo https://github.com/epeth0mus/cheyote --title "Fake jailbreak do not use this" -b ""
            sleep 10
            gh issue create --repo https://github.com/epeth0mus/Fugu16 --title "Fake jailbreak do not use this" -b ""
            sleep 10
            gh issue create --repo https://github.com/epeth0mus/Fugu15 --title "Fake jailbreak do not use this" -b ""
            sleep 10
            #gh issue create --repo https://github.com/epeth0mus/ios-15-15.1.1-jailbreak --title "Fake jailbreak do not use this" -b ""
            #sleep 12
            gh issue create --repo https://github.com/epeth0mus/undecimus-mod --title "Fake jailbreak do not use this" -b ""
            sleep 10
            #gh issue create --repo https://github.com/epeth0mus/desc_race --title "Fake jailbreak do not use this" -b ""
            #sleep 12
            #gh issue create --repo https://github.com/epeth0mus/iomfb-exploit --title "Fake jailbreak do not use this" -b ""
            #sleep 12
            gh issue create --repo https://github.com/epeth0mus/checkra1n-mod --title "Fake jailbreak do not use this" -b ""
        done
fi
