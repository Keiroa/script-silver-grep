#!/bin/bash

echo "! . . STARTING AUDIT UTILIZING THE SILVER SEARCHER . . !"
echo "Make sure you have Brew installed on your local Mac Device."

script() {
  url_file="linksFile.txt"
  audit_file="auditFile.txt"

  if [ -s $url_file ]; then
    # The file is not-empty
    rm -f $url_file
    touch $url_file
  fi
  ag -Q "https" >> $url_file
  grep '\/"' ./$url_file >> $audit_file
}

script
echo "! . . AUDIT END . . "