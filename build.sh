#!/usr/bin/env bash

pandoc til.md --template=template.html --metadata pagetitle=TIL -o index.html

