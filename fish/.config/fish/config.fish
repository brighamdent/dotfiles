if status is-interactive
    # Commands to run in interactive sessions can go here

set -g fish_greeting ""
set -x PATH $HOME/bin $PATH
set -x MUSIC_DIR ~/media/music/Liked-Songs/

#List of aliases
alias ll 'ls -l'
alias la 'ls -a'
alias grep 'grep --color=auto'
alias vim 'nvim'
alias fd 'cd (fdir)'
alias neofetch 'fastfetch'
alias ls 'eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias clear 'clear && neofetch'
alias tmfloat '~/scripts/tmux_session_float.sh'
alias tmcode '~/scripts/tmux_session_code.sh'
alias music 'tmux new-session -s $fish_pid "tmux source-file ~/.config/ncmpcpp/tsession"'

#Starts wal on boot
cat /home/brigham/.cache/wal/sequences

#Variables
export GTK_THEME=Adwaita:dark
export QT_STYLE_OVERRIDE=Adwaita-dark

#Functions for Fzf "Find file in current directory"
function ff
    set item (find . -type f -print 2> /dev/null | fzf)
    if test -n "$item"
        echo "Opening in nvim: $item"
        nvim "$item"
    end
end

#Functions for Fzf "Find directory in current dirrectory"
function fdir
    find . -type d 2> /dev/null | fzf
end
if not set -q NVIM
    neofetch
    starship init fish | source
end
zoxide init --cmd cd fish | source

end

if test -z "$DISPLAY" -a (tty) = '/dev/tty1'
    exec Hyprland
end

