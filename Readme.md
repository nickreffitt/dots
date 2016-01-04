# dots

![image](https://i.cloudup.com/RCpB-ASfme.png)

WIP bootstrapping library for OSX

## Download

One-liner:

```bash
(mkdir -p /tmp/dots && cd /tmp/dots && curl -L https://github.com/nickreffitt/dots/archive/master.tar.gz | tar zx --strip 1 && sh ./install.sh)
```

## Installation

```bash
dots osx boot
```

## Post-Installation Steps

- Install Xcode from the [App Store](https://itunes.apple.com/gb/app/xcode/id497799835?mt=12)
- Install [Tomorrow Night](https://github.com/chriskempson/tomorrow-theme) terminal theme `open ~/Dropbox/backup/tomorrow-night.terminal`
- Install IntelliJ IDEA 14 `curl -o ~/Downloads/idea-14.dmg https://download.jetbrains.com/idea/ideaIU-14.1.5.dmg`

## Design

The goal of dots is to automate the process of getting your operating system from a stock build to a fully functional machine.

Dots should be the first thing you download and run to get your computer set up.

This library tries to be organized like a node application, while working within the constraints of bash.

## What's Included

The script does the following:

- install homebrew
- installs binaries
- sets OSX defaults
- installs applications via `homebrew-cask`
- sets up the ~/.bash_profile
- sets up the ~/.zshrc

# Credits

* Creator: [Matthew Mueller](https://github.com/matthewmueller)
* Logo by: [Piotrek Chuchla](http://www.thenounproject.com/pchuchla/)

# License

MIT
