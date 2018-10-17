function fish_prompt
  test "$status" -eq 0; and set_color green; or set_color red
  echo -n "> "
  set_color normal
end
