shell-config
============

[shell-config][0] is a personal dotfiles repository for shell ([bash][2],
[zsh][3] and [tmux][4]). It is compatible with [vcsh-dotfiles][1].

## Requirements

- [vcsh-dotfiles][1]

## Install

Clone via `vcsh-dotfiles`:

    $ vcsh-dotfiles clone https://github.com/ek9/shell-config

When starting new shell (`bash` or `zsh`), a new `tmux` session should start
automatically. The first time it will start, it will install
[TPM and tmux plugins](#tmux plugins).

## Overview

### Features

- Enables automatic [tmux][4] start for all shell sessions (tres to attach to
  detached sessions first).
- Starts [keychain][5] SSH Agent automatically.
- Sets up [bash][2] shell with [liquidprompt][10] and [oh-my-git][11].
- Sets up [zsh][3] shell with [antigen][30], [oh-my-zsh][31] and
  [liquidprompt][10] enabled.
- Sets up [tmux][4] with [TPM plugins](#tmux plugins) (**note** tmux plugin
  install must be initialized manually via `Alt+a Shift+I`).
- Sets up basic configuration for bash and zsh and allows extending it further
  by using [Directory Structure](#Directories).

### tmux plugins

A list of plugins that are enabled in `.tmux.conf`:

- [TPM][40]
- [ek9/tmux-config][41], [ek9/tmux-vim-bindings][42], [ek9/tmux-sessionist][43]
- [seebi/tmux-colors-solarized][44]
- tmux-plugins: [tmux-yank][45], [tmux-battery][46], [tmux-cpu][47],
  [tmux-sidebar][48]
- [NHDaly/tmux-scroll-copy-mode][49]

### Directories

Basic directory structure:

- `.config/bash/config.d` - bash specific `.sh` config scripts (autoloaded)
- `.config/shell/config.d` - shell agnostic `.sh` config scripts
  (autoloaded)
- `.config/shell/profile.d` - shell agnostic `.sh` profile environment
  scripts (autoloaded)
- `.config/zsh/config.d` - zsh specific `.zsh` config scripts (autoloaded)

### Files

- Sets up basic shell scripts to allow customizations via [directories](#Directories)
  (this makes sure to only load profile scripts on `interactive login/non-login` shells):
    - `.profile` - setup to autoload scripts from `.config/shell/profile.d`
    - `.bashrc` - setup to autoload scripts from `.config/shell/config.d/`
      and `.config/bash/config.d` directories for any customizations
    - `.bash_profile` - setup to autoload scripts
      from `.config/shell/profile.d`. It also loads `.profile` and `.bashrc`
    - `.zshrc` - setup to autoload scripts from `.config/shell/config.d/`
      and `.config/zsh/config.d` directories for any customizations. Has
      [antigen][30] enabled so the scripts can provide different
      configurations.
    - `.bash_profile` - setup to autoload scripts
      from `.config/shell/profile.d`. It also loads `.profile` and `.bashrc`
    - Further customizations can be done by providing custom files in any of
      the basic directories in your own repository.

## Authors

Copyright (c) 2015-2017 ek9 <dev@ek9.co> (https://ek9.co).

## License

Licensed under [MIT License](LICENSE).

[0]: https://github.com/ek9/shell-config
[1]: https://github.com/ek9/vcsh-dotfiles
[2]: https://www.gnu.org/software/bash/
[3]: http://www.zsh.org/
[4]: https://github.com/tmux/tmux
[5]: https://github.com/funtoo/keychain
[40]: https://github.com/tmux-plugins/tpm
[41]: https://github.com/ek9/tmux-config
[42]: https://github.com/ek9/tmux-vim-bindings
[43]: https://github.com/ek9/tmux-sessionist
[44]: https://github.com/seebi/tmux-colors-solarized
[45]: https://github.com/tmux-plugins/tmux-yank
[46]: https://github.com/tmux-plugins/tmux-battery
[47]: https://github.com/tmux-plugins/tmux-cpu
[48]: https://github.com/tmux-plugins/tmux-sidebar
[49]: https://github.com/NHDaly/tmux-scroll-copy-mode
