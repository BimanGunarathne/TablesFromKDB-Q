\l namegen.q
\l phonegen.q

cid:1+ til 100000
cname:names
pnumber:numbers

Customer:([ID:cid] CustomerName:cname;PhoneName:pnumber)
\ts show Customer