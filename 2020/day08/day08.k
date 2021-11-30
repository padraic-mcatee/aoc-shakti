/ day08
input:0:"day08/input.txt"
t:(`n`i$/:" "\'{x@&~x="+"}'input),\:,()
f:{[t;p;a;ps]
 instr:t@p;acc:a;delta:1;ps,:p;
 $[`acc=instr[0];acc+:instr[1];`jmp=instr[0];delta:instr[1];::];
 (.[t;(p;2);{y,x};acc];p+delta;acc;ps)}
s:(t;0;0;())
res1:{$[x[1] in x[3];x;f . x]}/: s
f2:{$[x[0][1] in x[0][3];(x[0];0);x[0][1]=#x[0][0];(x[0];1);x[0][1]>#x[0][0];(x[0];0);(f . x[0];0)]}

gen:{{(x;0)}'(,'.[*x;;:;last y]'{(x;0)}'&(*y)=@[;0]'*x),\:1_x}[s;]
S:gen[`jmp`nop],gen[`nop`jmp]
tmp:{f2/:x}'S
res2:**tmp@&tmp@\:1
