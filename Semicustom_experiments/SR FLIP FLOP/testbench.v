module srff_tb;
reg s,r,clk;
wire q,qbar;
srff uut (.q(q),.qbar(qbar),.s(s),.r(r),.clk(clk));
initial begin
clk=0;
forever #5 clk = ~clk;
end 
initial begin 
$monitor("time=%0t | s=%b | r=%b | q=%b | qbar=%b | clk=%b",$time,s,r,q,qbar,clk);
s=1; r=0;
#10 s=0;r=1;
#10 s=0;r=0;
#10 s=1;r=0;
#10 s=1;r=1;
#20 $finish;
end
endmodule

