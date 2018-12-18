function fish_right_prompt

  # Set colors
  test $status -eq 0;
  and set -l color cyan
  or set -l color red

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color white
  set -g __fish_git_prompt_color_flags red
  set -g __fish_git_prompt_color_prefix $color
  set -g __fish_git_prompt_color_suffix $color
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_show_informative_status true

  # Print prompt
  __fish_git_prompt " [%s] "
  set_color --dim white; date "+%H:%M:%S"; set_color normal
end
