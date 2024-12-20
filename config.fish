if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Removes the Fish welcome message
function fish_greeting
end

function fish_title
    set -l full_path (pwd)

    set -l current_dir (basename $full_path)
    set -l parrent_dir (basename (dirname $full_path))

    echo $parrent_dir/$current_dir
end

# Aliases
alias g='git'
alias .='cd . && clear'
alias reset='source ~/.config/fish/config.fish && clear' # Restart the terminal without having to open and close again
alias fishconfig='code ~/.config/fish/config.fish && clear' # Open this configuration file
alias starconfig='code ~/.config/starship.toml && clear' # Opens the Starship configuration file
alias cdp='source ~/.scripts/cdp.fish' # command that i made for manage my projects
alias cdw='source ~/.scripts/cdw.fish' # command that i made for manage my projects
alias windows='source ~/.scripts/windows.fish' # command that i made for start windows in docker
alias lap='source ~/.scripts/lap.fish' # command that i made for manage my projects
alias lzd='lazydocker' # command that i made for manage my projects
alias lzg='lazygit' # command that i made for manage my projects

source ~/.asdf/asdf.fish

starship init fish | source
