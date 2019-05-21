function fish_prompt
  set -l exit_status $status
  if test -z "$TMUX"
    echo (set_color red)"Not on tmux."(set_color normal)
    omf theme default
  else
    test $exit_status -eq 0; and set_color --bold cyan; or set_color --bold red
    echo -n "> "
    set_color normal
  end
end
