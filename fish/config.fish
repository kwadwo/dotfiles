set fish_greeting
set EDITOR vim
set -gx PATH $GOPATH $PATH
set -gx PATH $PATH /home/sircmpwn/.gem/ruby/2.0.0/bin/
set -gx PATH $PATH /home/sircmpwn/opt/cross/bin/
function parse_git_branch
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
end
function fish_prompt --description 'Write out the prompt'

    # Just calculate these once, to save a few cycles when displaying the prompt
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    switch $USER

        case root

        if not set -q __fish_prompt_cwd
            if set -q fish_color_cwd_root
                set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
            else
                set -g __fish_prompt_cwd (set_color $fish_color_cwd)
            end
        end

        echo -n -s "$USER" @ "$__fish_prompt_hostname" ' ' "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" '# '

        case '*'

        if not set -q __fish_prompt_cwd
                set -g __fish_prompt_cwd (set_color $fish_color_cwd)
        end

        echo -n -s "$USER" @ "$__fish_prompt_hostname" ' ' "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" (parse_git_branch) '> '

    end
end

function assemble
    echo "$argv" | mono ~/sources/sass/sass/bin/Debug/sass.exe - - | hexdump -C
end
