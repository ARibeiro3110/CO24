#!/bin/zsh

rm -rf checked-out checked-out-ref
mkdir -p checked-out

cp -r ../projComp checked-out/001

#-- add to vault
#tar cfj vault/cloned-$TEST_TIME.tar.bz2 checked-out
#git add vault/cloned-$TEST_TIME.tar.bz2
#git commit -am "Added cloned stated for $TEST_TIME."
#git push

# teacher groups
#(cd checked-out; rm -rf 000 [2-9]??)

cp -a checked-out checked-out-ref

#-- clear histories
rm -rf checked-out-ref/???/.git
rm -rf checked-out/???/.git

