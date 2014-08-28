dotfiles
========

Various dotfiles and configuration files.

Setting Up a New Environment
----------------------------

#### Install Xcode and [Command Line Tools](https://developer.apple.com/downloads/index.action?name=for%20Xcode%20-)

#### Install [Homebrew](http://mxcl.github.com/homebrew/)

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

#### Install [RVM](https://rvm.io/rvm/install)

```bash
curl -sSL https://get.rvm.io | bash -s stable --ruby
```

This will install rvm and the latest stable ruby version.

#### Install Rails
```bash
sudo gem install rails
```

#### Install [Postgres](http://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/)

```bash
brew install postgres
```

To have launchd start postgresql at login:
```bash
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
```

Then to load postgresql now:
```bash
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

Once installed, you can poke around the DB with psql:
```bash
psql -d postgres
```

Use `\q` to quite psql.

#### Install [pgAdmin](http://www.pgadmin.org/download/macosx.php)

#### Install [Heroku Toolbelt](https://toolbelt.heroku.com/)

#### Setup Sublime Text Command

```bash
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

#### Show Hidden Files on Mac
```bash
defaults write com.apple.finder AppleShowAllFiles YES
```
Then relaunch Finder.
