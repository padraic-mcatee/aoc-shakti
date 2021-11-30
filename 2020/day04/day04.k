/ day03
input:0:"day04/input.txt"
r:(1b,1_~#')^input / records
p:(!)./:.[;(;0);`n$]@(+":"\',/" "\')'r
res1:+/7=#'`cid_'p
""0:,"PART 1\n Num valid passports: ",$res1


/ investigate
rules: :((`i$byr)within 1920 2003
 (`i$iyr)within 2010 2021
 (`i$eyr)within 2020 2031
 (`i$-2_hgt)within(59 77;150 194)"cm"~-2#hgt
 "#"=*hcl;6=#"0123456789abcdef"#hcl;7=#hcl
 `amb`blu`brn`gry`grn`hzl`oth'`n$ecl
 9=#"0123456789"#pid)
pr:(7=#')#`cid_'p
res2:+/&/+pr@'rules
""0:,"PART 2\n Num valid passports: ",$res2
