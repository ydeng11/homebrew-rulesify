# Homebrew Rulesify Tap

Homebrew tap for [rulesify](https://github.com/ydeng11/rulesify) - a CLI tool to discover and install AI agent skills.

## Installation

```bash
brew tap ydeng11/rulesify
brew install rulesify
```

Or install directly:

```bash
brew install ydeng11/rulesify/rulesify
```

## Usage

After installation:

```bash
rulesify --help
rulesify init
rulesify skill list
```

## Shell Completion

Shell completions are automatically installed by Homebrew.

### Bash

Add to your `~/.bashrc` or `~/.bash_profile`:

```bash
source "$(brew --prefix)/etc/bash_completion.d/rulesify"
```

### Zsh

Completions are installed to Homebrew's zsh site-functions directory. Add to your `~/.zshrc`:

```zsh
FPATH="$(brew --prefix)/share/zsh/site-functions:$FPATH"
autoload -Uz compinit && compinit
```

### Fish

Completions are automatically available for Fish shell users.

## Updating

```bash
brew upgrade rulesify
```

## Uninstalling

```bash
brew uninstall rulesify
brew untap ydeng11/rulesify
```

## More Information

- [rulesify repository](https://github.com/ydeng11/rulesify)
- [rulesify documentation](https://github.com/ydeng11/rulesify#readme)

## License

MIT License - see [rulesify repository](https://github.com/ydeng11/rulesify) for details.