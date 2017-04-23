function fzf_kill_process -d "fzf source to select and kill process"
    ps aux | fzf | awk '{ print $2 }' | read pid

    if test -n "$pid"
        commandline "kill $pid"
        # commandline -f execute
    end
end
