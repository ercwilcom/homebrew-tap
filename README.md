# peeza for Homebrew

[peeza](https://peeza.app/) sends files of any size straight to your own
devices and to other people.

```bash
brew install ercwilcom/tap/peeza
```

That installs the app into `/Applications` and puts the `peeza` command line
on your PATH. It needs macOS 14 or later.

peeza updates itself, so `brew upgrade` leaves it alone. `brew uninstall --cask
peeza` removes the app and the command and keeps your transfers in `~/.peeza`;
`brew uninstall --zap --cask peeza` removes those too.

This repository holds only the install recipe. The app itself is the signed,
notarised download from [peeza.app/download](https://peeza.app/download), and
each release of the Mac app updates the recipe here.
