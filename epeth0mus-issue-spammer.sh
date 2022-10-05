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
            sleep 15
            gh issue create --repo https://github.com/epeth0mus/cheyote --title "Fake jailbreak do not use this" -b ""
            sleep 15
            gh issue create --repo https://github.com/epeth0mus/Fugu16 --title "Fake jailbreak do not use this" -b ""
            sleep 15
            gh issue create --repo https://github.com/epeth0mus/Fugu15 --title "Fake jailbreak do not use this" -b ""
            sleep 15
            gh issue create --repo https://github.com/epeth0mus/checkra1n-mod --title "Fake jailbreak do not use this" -b ""
            sleep 15
            gh issue create --repo https://github.com/epeth0mus/palera1n16 --title "Fake Jailbreak do not use this" -b "You absolutely suck epethomus"
        done
fi
