#!/bin/zsh

rm -rf checked-out checked-out-ref
mkdir -p checked-out

#for i in {000..012} {014..041} {043..067} {069..094} {096..100} {102..120} 122 124 {126..131} 138 {181..182} {190..200}; do
for i in {000..012} {014..041} {043..067} {069..094} {096..100} {102..120} 122 124 {126..131} 138;
  (cd checked-out; git clone git@gitlab.rnl.tecnico.ulisboa.pt:leic-a-co24/prj/$i.git)
done

#-- add to vault
#tar cfj vault/cloned-$TEST_TIME.tar.bz2 checked-out
#git add vault/cloned-$TEST_TIME.tar.bz2
#git commit -am "Added cloned stated for $TEST_TIME."
#git push

# teacher groups
#(cd checked-out; rm -rf 000 [2-9]??)

cp -a checked-out checked-out-ref
#for i in {000..012} {014..041} {043..067} {069..094} {096..100} {102..120} 122 124 {126..131} 138 {181..182} {190..200}; do
for i in {000..012} {014..041} {043..067} {069..094} {096..100} {102..120} 122 124 {126..131} 138;
  (cd checked-out-ref/$i; git -c advice.detachedHead=false checkout `git rev-list -1 --date=iso --before="2024-05-14T17:10:00+00:00" master`)
done

#-- clear histories
rm -rf checked-out-ref/???/.git
rm -rf checked-out/???/.git

