#!/bin/zsh

rm -rf checked-out checked-out-ref
mkdir -p checked-out

for i in 000 001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020 021 022 023 024 025 026 027 028 029 031 032 033 034 035 036 037 038 039 040 041 042 043 044 045 046 047 048 049 050 051 052 053 054 055 056 057 058 059 060 061 063 064 066 067 068 069 071 072 073 074 075 076 077 078 079 080 081 083 084 085 086 087 088 089 090 091 092 093 094 095 096 098 099 100 101 102 103 104 105 106 107 108 113 118 119 200; do
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
for i in 000 001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020 021 022 023 024 025 026 027 028 029 031 032 033 034 035 036 037 038 039 040 041 042 043 044 045 046 047 048 049 050 051 052 053 054 055 056 057 058 059 060 061 063 064 066 067 068 069 071 072 073 074 075 076 077 078 079 080 081 083 084 085 086 087 088 089 090 091 092 093 094 095 096 098 099 100 101 102 103 104 105 106 107 108 113 118 119 200; do
  (cd checked-out-ref/$i; git -c advice.detachedHead=false checkout `git rev-list -1 --date=iso --before="2024-04-09T12:30:00+00:00" master`)
done

#-- clear histories
rm -rf checked-out-ref/???/.git
rm -rf checked-out/???/.git

