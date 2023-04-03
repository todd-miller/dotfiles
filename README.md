# Dotfiles

## Installing

Run `stow` to symlink everything or just select what you want

```bash
stow */ # Everything (the '/' ignores the README)
```

```bash
stow zsh # Just my zsh config
```

## Config Wants
- skhd killed my ability to vim move lines up or down (Alt Key is basically nuked) - I don't like this
  - I like yabai full-screening, but this makes it lame, remap?...
  - need to take a closer look at keymaps


- something is killing my session load times, maybe unplug everything and
  measure?
  - start with tmux and zshrc configs and nuke?
    - timeit somehow?

## Migrations To Dotfiles:
#### Todo:
karabiner
yabai
skhd
nvim
z's  --> zlogin
zsh  --> zshenv
vimrc

#### Should I Migrate?:
tern ?
swt
rustup
pyenv
pgadmin
nvm --> how to delete because now there's fnm
mono
matplotlib? --> do i need this?
docker
lemminx
fleet
dotnet
cocoapods
cargo
azure
aspnet
android
3T
template engine
