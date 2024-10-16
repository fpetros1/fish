function fish_prompt
    if begin; test -n "$TMUX"; and test -z "$NVIM"; end
        echo -n (fish_vi_prompt)
        set_color normal
    else
        if test -n "$SSH_TTY"
            echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
        end

        # echo -n (set_color yellow)' '
        echo -n (set_color blue)' '(prompt_pwd)
        echo -n (fish_git_prompt)' '

        set_color -o
        if fish_is_root_user
            echo -n (set_color red)'# '
        end
        echo ''
        echo -n (fish_vi_prompt)
        #   echo -n (set_color yellow)'󰒊 '
        set_color normal
    end

end
