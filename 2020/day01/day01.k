/ day01
input:`i$0: "day01/input.txt"
comb:{y {,/ x{x,/:y@&y>|/x}\:y}/ (x-1)#,y}
res1:{x@*&2020=(+/)'x} comb[2;input]
""0:,"PART 1\nNumbers: ",(" "/$res1)," | Multiplication: ",$*/res1
res2:{x@*&2020=(+/)'x} comb[3;input]
""0:,"PART 2\nNumbers: ",(" "/$res2)," | Multiplication: ",$*/res2

