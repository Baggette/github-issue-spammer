#!/usr/bin/env bash
if ! command -v gh &> /dev/null; then
        printf "gh command not found, please install Github CLI\n"
        exit 1
elif ! gh auth status &> /dev/null; then
        printf "Please login to Github CLI with 'gh auth login'\n"
        exit 1
fi

case "$1" in
    --version|-v)
        printf "Version: 2.0\n"
        exit 0
    ;;
    http://*|https://*)
        printf "Spamming will start in 5 seconds, press Ctrl+C to cancel\n"
        sleep 5
        while true; do
                gh issue create -R "$1" -t "Spam" -b "Spam"
                sleep 15
        done
    ;;
    *)
        printf "Usage: %s <github repo link>\n" "$0"
        printf "Example: %s https://github.com/foo/bar\n" "$0"
        exit 1
    ;;
esac
