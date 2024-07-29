if status is-interactive
    # Commands to run in interactive sessions can go here
    
    # Fastfetch
    fastfetch --logo ~/.config/fastfetch/warp.jpg --logo-width 36

    # alias
    alias l='lsd -l'
    alias la='lsd -la'
    alias ls='lsd'

    alias tree='lsd --tree'
    alias t='tmux'
end

set -g theme_nerd_fonts yes
# set -g theme_color_scheme dark
set -g theme_display_user yes
set -g default_user mirailisc
set -g theme_display_date no

function bobthefish_colors -S -d 'Define Tokyo Night colorscheme for bobthefish'

  # then override everything you want! note that these must be defined with `set -x`
  set -x color_initial_segment_exit     1f2335 c53b53 --bold
  set -x color_initial_segment_private  1f2335 61afef
  set -x color_initial_segment_su       1f2335 a9b665 --bold
  set -x color_initial_segment_jobs     1f2335 61afef --bold
  set -x color_path                     1f2335 c0caf5
  set -x color_path_basename            1f2335 c0caf5 --bold
  set -x color_path_nowrite             2e3440 c0caf5
  set -x color_path_nowrite_basename    2e3440 c0caf5 --bold
  set -x color_repo                     a9b665 1f2335
  set -x color_repo_work_tree           1f2335 1f2335 --bold
  set -x color_repo_dirty               c53b53 1f2335
  set -x color_repo_staged              ffc777 2e3440
  set -x color_vi_mode_default          1f2335 1f2335 --bold
  set -x color_vi_mode_insert           a9b665 1f2335 --bold
  set -x color_vi_mode_visual           ffc777 2e3440 --bold
  set -x color_vagrant                  61afef 1f2335 --bold
  set -x color_aws_vault
  set -x color_aws_vault_expired
  set -x color_username                 7aa2f7 1f2335 --bold
  set -x color_hostname                 7aa2f7 1f2335
  set -x color_rvm                      c53b53 c0caf5 --bold
  set -x color_virtualfish              61afef c0caf5 --bold
  set -x color_virtualgo                61afef c0caf5 --bold
  set -x color_desk                     61afef c0caf5 --bold
  set -x color_nix                      61afef c0caf5 --bold
end

