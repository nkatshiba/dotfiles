if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Global Enviroment Variables
set -gx EDITOR nvim
set -gx BROWSER qutebrowser
set -gx _JAVA_AWT_WM_NONREPARENTING 1

# Wayland env variables
set -gx QT_SCALE_FACTOR 1
set -gx QT_QPA_PLATFORM wayland
set -gx QT_WAYLAND_DISABLE_WINDOWDECORATION 1
# set -gx QT_QPA_PLATFORMTHEME qt6ct # qt5ct
set -gx QT_QPA_PLATFORMTHEME qt6ct # qt5ct
set -gx XDG_SESSION_TYPE wayland
set -gx MOZ_ENABLE_WAYLAND 1
set -gx GDK_BACKEND wayland
set -gx SUDO_EDITOR nvim

# Qutebrowser
set -gx QUTE_CONFIG_DIR "$HOME/.config/qutebrowser/"

# Chezmoi String
set -gx CHEZMOI_STR "Don't forget to add file to chezmoi :))"

# Source
source ~/.config/fish/functions/_HELPERS.fish
source ~/.asdf/asdf.fish

# Hydro
# set -g hydro_color_prompt '#51E1EC'  # For tilda
set -g hydro_color_pwd '#F9BB92'
set -g hydro_color_git '#F8C8DC'
set -g hydro_symbol_prompt 'lcl ❱'

set -g hydro_color_prompt '#ffb6c1'
# set -g hydro_color_prompt '#f7b6d2'
# set -g hydro_color_prompt '#ffe4e1'

set -g hydro_color_error '#DA627D'
set -g hydro_color_duration '#7B68EE'
set -g fish_prompt_pwd_dir_length 3



# complete -c yaya -a "(paru -Ss)"

# Paths
## phind.com nativefier app
set -gx PHIND_PATH "$HOME/.local/share/phind-linux-x64"
set -gx PATH "$PHIND_PATH" $PATH
## pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
## Internal / System
set -gx LOCAL_BIN_PATH "$HOME/.local/bin/"
set -gx PATH "$LOCAL_BIN_PATH" $PATH

# set -gx zoxide_cmd jjj
