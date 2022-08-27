#!/usr/bin/env bash
if ! command -v gh > /dev/null; then
sudo apt update && sudo apt upgrade -y && sudo apt install gh
fi

printf "Have you configured gh yet? y/n "
read y
if [[ $y == "n" ]]; then
        echo "It is reccomened to have a personal access token ready"
        sleep 2
        gh auth login
        sleep 2
        echo "Please rerun the script"
        sleep 2
elif [[ $y == "y" ]]; then
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
