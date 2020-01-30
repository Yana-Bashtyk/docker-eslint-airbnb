#!/bin/sh
# Run eslint, copying in specific eslint rules

if ls /app/.eslintrc.* 1> /dev/null 2>&1; then
  eslint_rc=true
else
  cp /root/.eslintrc.yml /app/.eslintrc.yml
fi

eslint "$@"

if [ "$eslint_rc" = true ]
then
  echo "--- ESlint Complete ---"
else
  rm /app/.eslintrc.yml
  echo "--- ESlint Complete ---"
fi