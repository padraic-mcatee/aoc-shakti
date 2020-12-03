/ day03
input:0:"day03/input.txt"
f1:{w:#*y;c:{`i$$(x;z mod y)}[;;w] ./: (,0 0),(0 0)+\(_%[#[y]-1;*x])#,x;y ./: c}
res1:#&"#"=f1[1 3;input]
""0:,"PART 1\n Num trees: ",$res1
slopes: +(1 1 1 1 2i;1 3 5 7 1i)
f2:{{#&"#"=f1[x;input]}' x}
res2:*/f2[slopes]
""0:,"PART 2\n Num trees: ",$res2
