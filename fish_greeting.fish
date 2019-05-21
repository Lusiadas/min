function fish_greeting
  if test -z "$TMUX"
    echo (set_color red)"Not on tmux."(set_color normal)
    omf theme default
  else
    command grep -P '^source-file.*tmuxtheme$' $HOME/.tmux.conf | read theme
    string match -qr 'min\.tmuxtheme$' $theme
    and return 0
    omf cd min
    command realpath min.tmuxtheme | read mintheme
    test "$theme"
    and sed -i "s/$theme/$mintheme/g" $HOME/.tmux.conf
    or echo $mintheme >> $HOME/.tmux.conf
    tmux source-file $HOME/.tmux.conf
  end
end
