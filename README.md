# min

> *A theme for [Oh My Fish](https://www.github.com/oh-my-fish/oh-my-fish).*

[![GPL License](https://img.shields.io/badge/license-GPL-blue.svg?longCache=true&style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.7.1-blue.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-blue.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

![screenshot](screenshot.png)

## Description

A minimal prompt to be used with the "[powerline double cyan](https://gitlab.com/hthoreau/min_statusbar)" statusbar for [tmux](https://tmux.github.io).

## Install

Either with omf

```fish
omf install min
```

or [fisherman](https://github.com/fisherman/fisherman)

```fish
fisher gitlab.com/lusiadas/min
```

## Configuration

In the screenshot above, you can see that I've modified the contents displayed in the statusbar from those of the theme.

To do so, I've added the following lines to the bottom of my `~/.tmux.conf` file:

```
# Tweak theme
set -g status-left "#[fg=colour233,bg=colour39] #S #[fg=colour39,bg=colour240]#[fg=colour233,bg=colour240] #(whoami) #[fg=colour240,bg=colour233]"
set -g status-right "#[fg=colour240,bg=colour233]#[fg=colour39,bg=colour240] #[fg=colour233,bg=colour39] #{pane_current_path} "
set -g window-status-format "  #I:#W  "
set -g window-status-current-format "#[fg=colour233,bg=black]#[fg=colour81] #I:#W #[fg=colour233,bg=black]"

```

To modify yours as well, use the following command:

```
grep -A 4 '# Tweak theme' ~/.local/share/omf/theme/min/README.md >> ~/.tmux.conf
```

---

Ⓐ Made in Anarchy. No wage slaves were economically coerced into the making of this work.
