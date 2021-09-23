#!/bin/sh
# Run eslint, copying in specific eslint rules

if ls ./.eslintrc.* 1> /dev/null 2>&1; then
  eslint_rc=true
else
  cp /root/.eslintrc.yml ./.eslintrc.yml
fi

if [ "$eslint_rc" = true ]
then
  eslint "$@" && echo "--- ESlint Complete ---" || {
    echo "--- ESlint Complete ---"
    exit 1;
  }
else
  eslint "$@" && rm ./.eslintrc.yml && echo "--- ESlint Complete ---" || {
    echo "--- ESlint Complete ---"
    rm ./.eslintrc.yml
    exit 1;
  }
fi