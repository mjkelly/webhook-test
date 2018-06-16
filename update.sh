#!/bin/bash
DATE="$(date +%s)"
sed -i.bak "s/^id:.*/id: ${DATE}/" file
git add file
git ci -m "Update ${DATE}"
git push
rm -f file.bak
