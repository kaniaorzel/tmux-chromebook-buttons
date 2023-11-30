# tmux-chromebook-buttons

Enables buttons in Dell Chromebook 11 (3120).
I need this because I'm using this chromebook without display manager,
so my main application for work is tmux in TTY without GUI 💪

- navigation in windows
- pane zoom
- brightness control
- volume control

That plugin should works also with different laptops, but you need to change main plugin file.

## Prerequisites

Make sure that you have access to brigthness control:
`/sys/class/backlight/intel_backlight/brightness`
Manipulation with this file was done with `tee`.

## Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```tmux
set -g @plugin 'kaniaorzel/tmux-chromebook-buttons'
```

Hit `<prefix> + I` to fetch the plugin and source it.

## TODO

- [x] brightness control
- [ ] volume control
- [ ] figure it out how to use brightness without sudo
- [ ] more universal
