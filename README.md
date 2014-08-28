dotfiles
========

Various dotfiles and configuration files.

Setting up a New Environment
----------------------------

#### Install [Homebrew] (http://mxcl.github.com/homebrew/)

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```
#### Install [RVM](https://rvm.io/rvm/install)

```bash
curl -L https://get.rvm.io | bash -s stable --ruby
```

This will install rvm and the latest stable ruby version.

#### Install [Postgres](http://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/)

```bash
brew install postgres
```

Follow instructions in link.
Once installed, you can poke around the DB with psql:

```bash
psql -d postgres
```

Use `\q` to quite psql.

#### Install [pgAdmin](http://www.pgadmin.org/download/macosx.php)


#### Setup Sublime Text Command

```bash
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```
