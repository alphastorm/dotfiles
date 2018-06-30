# dotfiles

my dotfiles and configuration stuff.

## colorscheme

[solarized dark](http://ethanschoonover.com/solarized)

## directory colors

[dircolors-solarized](https://github.com/seebi/dircolors-solarized)

## font

[Inconsolata-g for powerline](https://github.com/powerline/fonts/tree/master/Inconsolata-g)

## homebrew

[homebrew](http://brew.sh/)

```
cmake
coreutils
csshx
diff-so-fancy
fzf
httpie
jq
macvim --with-override-system-vim --with-python@2
shellcheck
wget
z
zsh
```

### fzf

install useful key bindings and fuzzy completion:

```
$(brew --prefix)/opt/fzf/install
```

### ripgrep

homebrew-core's version is compiled with rust stable and no SIMD.  install a
binary compiled with rust nightly (including SIMD and all optimizations) by
utilizing a custom tap:

```
brew tap burntsushi/ripgrep https://github.com/BurntSushi/ripgrep.git
brew install burntsushi/ripgrep/ripgrep-bin
```
