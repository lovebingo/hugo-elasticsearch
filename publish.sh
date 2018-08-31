#!/usr/bin/env bash

if git diff --exit-code -- . ':(exclude)package.json'; then
  echo 'Clean working tree'
else
  echo 'Dirty working tree'
  exit 1
fi