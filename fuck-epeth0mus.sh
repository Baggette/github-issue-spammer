#!/bin/bash
sudo apt update && sudo apt upgrade -y && sudo apt install gh
    
echo "Have you configured gh yet? y/n"
read y
if [[$y == "n"]]; then
        echo "It is reccomened to have a personal access token ready"
        sleep 2
        gh auth login
        sleep 2
        echo "Please rerun the script"
        sleep 2
        fi
else
    then
        while true
        do
            gh issue create --repo https://github.com/Baggette/fuck-epeth0mus --title "test"
            sleep 10
        done