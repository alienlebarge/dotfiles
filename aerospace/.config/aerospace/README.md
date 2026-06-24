# AeroSpace Keybindings

Quick reference for the bindings defined in `aerospace.toml`.
Official commands reference: https://nikitabobko.github.io/AeroSpace/commands

> Swiss-French keyboard: Y and Z are swapped relative to the standard US
> notation (see `[key-mapping.key-notation-to-key-code]`).

## `main` mode (default mode)

### Layout

| Shortcut       | Command                                | Effect                |
|----------------|------------------------------------------|------------------------|
| `alt+shift+,`  | `layout tiles horizontal vertical`       | Switch to tiles layout |
| `alt+shift+.`  | `layout accordion horizontal vertical`   | Switch to accordion layout |

### Focus

| Shortcut | Command       |
|----------|---------------|
| `alt+h`  | `focus left`  |
| `alt+j`  | `focus down`  |
| `alt+k`  | `focus up`    |
| `alt+l`  | `focus right` |

### Move a window

| Shortcut       | Command     |
|----------------|-------------|
| `alt+shift+h`  | `move left` |
| `alt+shift+j`  | `move down` |
| `alt+shift+k`  | `move up`   |
| `alt+shift+l`  | `move right`|

### Move to another monitor

| Shortcut          | Command                      |
|-------------------|-------------------------------|
| `ctrl+alt+cmd+h`  | `move-node-to-monitor left`  |
| `ctrl+alt+cmd+l`  | `move-node-to-monitor right` |

### Resize

| Shortcut          | Command          |
|-------------------|-------------------|
| `ctrl+alt+cmd+k`  | `resize smart -50` |
| `ctrl+alt+cmd+j`  | `resize smart +50` |

### Workspaces (1 to 9)

| Shortcut                  | Command                       |
|----------------------------|---------------------------------|
| `ctrl+alt+cmd+<n>`        | `workspace <n>`                |
| `ctrl+alt+cmd+shift+<n>`  | `move-node-to-workspace <n>`   |

### Misc

| Shortcut                  | Command                                              | Effect                                                        |
|----------------------------|----------------------------------------------------------|-----------------------------------------------------------------|
| `ctrl+alt+cmd+space`       | `fullscreen`                                              | Toggle fullscreen                                                |
| `ctrl+alt+cmd+tab`         | `workspace-back-and-forth`                                | Jump back to the previous workspace                             |
| `ctrl+alt+cmd+shift+tab`   | `move-workspace-to-monitor --wrap-around next`            | Move the current workspace to the next monitor                  |
| `ctrl+alt+cmd+s`           | `mode service`                                            | Enter `service` mode (see below)                                 |
| `ctrl+alt+cmd+p`           | isolate + floating + resize 800×600 via osascript        | Screenshot helper: isolates the focused window on workspace `P` |

## `service` mode

Entered via `ctrl+alt+cmd+s`. Every action automatically returns to `main` mode.

| Shortcut       | Command(s)                          | Effect                                                          |
|----------------|----------------------------------------|---------------------------------------------------------------------|
| `esc`          | `reload-config`                        | Reload the config and exit the mode                                |
| `r`            | `flatten-workspace-tree`               | Reset the workspace layout                                          |
| `f`            | `layout floating tiling`               | Toggle the focused window between floating and tiling                |
| `backspace`    | `close-all-windows-but-current`        | Close every window except the focused one                           |
| `p`            | `layout tiling`                        | Restore a floating window (e.g. after `ctrl+alt+cmd+p`) back to tiling |
| `alt+shift+h`  | `join-with left`                       | Merge with the window on the left                                    |
| `alt+shift+j`  | `join-with down`                       | Merge with the window below                                          |
| `alt+shift+k`  | `join-with up`                         | Merge with the window above                                          |
| `alt+shift+l`  | `join-with right`                      | Merge with the window on the right                                   |

> Note: `alt+shift+h/j/k/l` also exist in `main` mode (move a window) — in
> `service` mode they instead merge containers (`join-with`), not move them.
