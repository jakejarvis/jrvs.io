#!/bin/bash

set -e

# usage: `./short.sh https://github.com/jakejarvis git`
# inspired by https://github.com/caarlos0-graveyard/netlify-shortener-sh/blob/master/short.sh

# make sure the first param is the URL since I may or may not consistently mix them up
url="$1"
if [[ ! "$url" =~ ^https?:// ]]; then
  echo "First parameter must be a valid URL, dummy."
  exit 1
fi

# generate a random 5-character path if unspecified
code="$2"
[[ -n "$code" ]] || code="$(openssl rand -hex 5 | head -c 5)"

# prepend new shortlink to the _redirects file
printf "/%s  %s\n%s\n" "$code" "$url" "$(cat src/_redirects)" > src/_redirects

# netlify will take it from here...
git add src/_redirects
git commit -m "/$code -> $url"
git push -u origin main

echo ""
echo "👍 https://jrvs.io/$code -> $url"
