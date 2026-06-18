module jkff_tb;
reg j,k,clk;
wire q,qbar;
jkff uut(.q(q),.qbar(qbar),.j(j),.k(k),.clk(clk));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("time=%0t | j=%b |k=%b |q=%b | qbar=%b",$time,j,k,q,qbar);
j=0;k=1;
#10 j=0;k=0;
#10 j=1;k=0;
#10 j=1;k=1;
#20 $finish;
end
endmodule
