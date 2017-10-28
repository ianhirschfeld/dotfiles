dotfiles
========

Various dotfiles and configuration files.

Setting Up a New Environment
----------------------------

#### Install Xcode and Command Line Tools

```bash
xcode-select --install
```

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
gem install rails
```

#### Install [Postgres](http://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/)

```bash
brew install postgresql
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

```bash
brew install heroku/brew/heroku
```

#### Install [QT](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit)

```bash
brew install qt
```

To run the javascript specs from the command line, you need to install QT which is needed by [capybara-webkit](https://github.com/thoughtbot/capybara-webkit) for the request specs.

#### Install libxml2 and libxslt

```bash
brew install libxml2 libxslt
```

These are needed to install nokogiri gem.

#### Setup Sublime Text Command

```bash
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

#### Show Hidden Files on Mac
```bash
defaults write com.apple.finder AppleShowAllFiles YES
```
Then relaunch Finder.
