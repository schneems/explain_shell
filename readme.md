# Explain Shell

An awesometastic way to open http://explainshell.com/ from your command line

## Install

```sh
$ gem install explain_shell
```

## Use

The explain_shell gem gives you an `explain` function in bash.

```sh
$ explain tar xzvf archive.tar.gz
```

Will open up http://explainshell.com/explain/tar?args=xzvf+archive.tar.gz in your browser!

Use it with any unix command!

```sh
$ explain find . -type f -print0
$ explain ssh -i keyfile -f -N -L 1234:www.google.com:80 host
$ explain lsof -c python -u user
$ explain mysql -u root -p -h 192.168.1.2
$ explain iptables -A INPUT -i eth0 -s ip-to-block -j DROP
$ explain git log --graph --abbrev-commit --pretty=oneline origin..mybranch
```

It's super annoying that it's a slightly different name ah-la bundle/bundler, but the [explain](http://rubygems.org/gems/explain) gem name was already taken.

## Without Rubygems

If you don't have Rubygems on your system (`$ which gem` returns nothing). You can add a simple script to your startup enviornment instead:

```sh
function explain {
  # base url with first command already injected
  # $ explain tar
  #   => http://explainshel.com/explain/tar?args=
  URL="http://explainshell.com/explain/$1?args="

  # removes $1 (tar) from arguments ($@)
  shift;

  # iterates over remaining args and adds builds the rest of the url
  for i in "$@"; do
    URL=$URL"$i""+"
  done

  # opens url in browser
  open $URL
}
```

## License

MIT

