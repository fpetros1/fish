function fish_vi_prompt --description "Display vi prompt mode"
    # Do nothing if not in vi mode
    if test "$fish_key_bindings" = fish_vi_key_bindings
        or test "$fish_key_bindings" = fish_hybrid_key_bindings
        set SYMBOL '󰘧'
        switch $fish_bind_mode
            case default
                set_color --bold red
                #echo '󰫻'
                echo "$SYMBOL"
            case insert
                set_color --bold green
                #echo '󰫶'
                echo "$SYMBOL"
            case replace_one
                set_color --bold green
                #echo '󰫿'
                echo "$SYMBOL"
            case replace
                set_color --bold cyan
                #echo '󰫿'
                echo "$SYMBOL"
            case visual
                set_color --bold magenta
                #echo '󰬃'
                echo "$SYMBOL"
        end
        set_color normal
    end
end
