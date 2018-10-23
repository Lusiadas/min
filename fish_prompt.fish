function fish_prompt
  test $status -eq 0; and set_color --bold cyan; or set_color --bold red
  echo -n "> "
  set_color normal
end
