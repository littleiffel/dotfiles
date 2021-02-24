# dotfiles

## Setup

`setup.sh` is to setup APT packages and os stuff

`ìnstall-symlinks.sh` sets symlinks

## Vim shortcuts

| Keys            | Descrition                                  |
| --------------- | ------------------------------------------- |
| `h`,`j`,`k`,`l` | Left, Down, Up, Right                       |
| `a`             | Append mode                                 |
| `i`             | Insert mode                                 |
| `W`,`e`,`b`     | move word forwad, end of word and back word |
| `Ctrl+w` `l`    | Switch to right buffer                      |
| `Ctrl+w` `h`    | Switch to left buffer                       |
| 2x `Ctrl+w`     | Toggle buffer                               |
| `Ctrl+j/k`      | Delete line below or above (CUSTOM)         |
| `Alt+j/k`       | Insert line below or above (CUSTOM)         |
| `Ctrl+o`        | Go back to Previous Buffer                  |

### Nerdtree

| Keys     | Descrition                                                   |
| -------- | ------------------------------------------------------------ |
| `Ctrl+n` | Toggle NerdTree                                              |
| `Enter`  | Open child or file                                           |
| `m`      | Open contxt menu, create directory or new file, move file... |
| `r`      | Refresh selected node                                        |
| `t`      | Open in new tab                                              |
| `?`      | Open Help of nerdtree                                        |

### FZF

| Keys     | Descrition |
| -------- | ---------- |
| `Ctrl+p` | Start FZF  |

## TMUX Shortcuts

| Keys            | Description                               |
| --------------- | ------------------------------------------|
| `Ctrl+b` -> PgUp| Go into Scroll mode Up                    |
| `q`             | Leave Scroll Mode                         |
| `Ctrl+b` -> c   | Create a new Window                       |
| `Ctrl+b` -> x   | Kill current Window                       |
| `Ctrl+b` -> <numb> | Switch to terminal <numb>              |
| `Ctrl+b` -> `d` | Detach current tmu session                |
| `Ctrl+b` -> Arrow Keys | Switch current window              |
| `Ctrl+b` -> Ctrl+Arrows | Change dimensions of current window |
| `Ctrl+b` -> `%`| Split pane vertically |
| `Ctrl+b` -> `"`| Split pane horizontally |

### Tmux Commands

| Command         | Description                               |
| --------------- | ----------------------------------------- |
| `tmux ls`       | List tmux sessions                        |
| `tmux a`        | Attach to last used session               |
| `tmux a -t <session name>`| Attach to session with name     |
| `tmux new -s <session_name> `| Create a new session with session_name |


