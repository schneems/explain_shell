#!/usr/bin/env sh

# base url with first command already injected
# $ explain tar
#   => http://explainshel.com/explain/tar?args=
url="http://explainshell.com/explain/$1?args="

# removes $1 (tar) from arguments ($@)
shift;

# iterates over remaining args and adds builds the rest of the url
for i in "$@"; do
  url=$url"$i""+"
done

# opens url in browser
# use `open` on OS X, `xdg-open` on GNU-Linux (Ubuntu et al.) 
case $OSTYPE in
  darwin*)
    open $url ;;
  linux-gnu)
    xdg-open $url ;;
  *)
    echo "no can do"
esac
