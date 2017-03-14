# 💾 `~/.*`
> Dotfiles! Muddafucka!

Hi. These are my dotfiles. They work fairly simply:

1. Everything starting with a `.` will be symlinked to `~`. That includes:


```
.
|-- git
|   |-- .gitconfig
|   |-- .gitignore_global
|-- shell
|   |-- .alias
|   |-- .ctags
|   |-- .env
|   |-- .kerlrc
|   |-- .path
|   |-- .prompt
|   |-- .racketrc
|   `-- .sbclrc
|-- tmux
|   |-- .tmux.conf
|-- vim
|   |-- .vimrc
`-- zsh
    `-- .zshrc
```

2. The `vim` and `tmux` folders will be linked entirely to `~` since they have some other things (like the `tmux/scripts` I use for my status bar).

3. Then there's the install scripts that just run some `brew installs`.

Not much more.

Keep it simple. Fork away!
