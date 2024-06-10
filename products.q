pid:1+ til 100000
pname:100000?`APPL`SAMS`GOOG`OPPO
randnum:1000?10000
pmodel: randnum til 100000
randnumprice:20000+500000?500000
pprice: randnumprice til 100000
randqty:1+20?20
qty:randqty til 100000
indate:100000?.z.d
outdate:100000?.z.d
selltime:100000?.z.t

Products:([ID:pid] Name:pname; Model:pmodel; Price:pprice; Quantity:qty; Instock:indate; Outstock:outdate; SllTime:selltime)