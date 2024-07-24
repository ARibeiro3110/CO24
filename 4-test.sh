#!/bin/zsh

GROUP=001
./test-group.sh $GROUP < /dev/null
# clean unnecessary files
/bin/rm -f logs/*.out 2>/dev/null
git add logs/$GROUP.res.html logs/$GROUP.log.html || true
git commit -am "Updated test results for group $GROUP."
