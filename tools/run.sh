#!/usr/bin/env bash

# Set the root directory for your project
PROJECT_ROOT="$(dirname "$(dirname "$(realpath "$0")")")"
prod=false
command="bundle exec jekyll s -l"
host="127.0.0.1"

help() {
  echo "Usage:"
  echo
  echo "   bash /path/to/run.sh [options]"
  echo
  echo "Options:"
  echo "     -H, --host [HOST]    Host to bind to."
  echo "     -p, --production     Run Jekyll in 'production' mode."
  echo "     -d, --drafts         Include drafts in the build."
  echo "     -h, --help           Print this help information."
}

while (($#)); do
  opt="$1"
  case $opt in
  -H | --host)
    host="$2"
    shift 2
    ;;
  -p | --production)
    prod=true
    shift
    ;;
  -d | --drafts)
    drafts=true
    shift
    ;;
  -h | --help)
    help
    exit 0
    ;;
  *)
    echo -e "> Unknown option: '$opt'\n"
    help
    exit 1
    ;;
  esac
done

command="$command -H $host -s $PROJECT_ROOT"

if $prod; then
  command="JEKYLL_ENV=production $command"
fi

# Add drafts flag if enabled
if [ "$drafts" = true ]; then
  command="$command --drafts"
fi

if [ -e /proc/1/cgroup ] && grep -q docker /proc/1/cgroup; then
  command="$command --force_polling"
fi

echo -e "\n> $command\n"
eval "$command"