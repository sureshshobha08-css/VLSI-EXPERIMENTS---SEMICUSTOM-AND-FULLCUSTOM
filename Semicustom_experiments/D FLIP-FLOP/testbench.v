
module dff_tb;
reg d,clk,reset;
wire q,qbar;
dff uut (.q(q),.qbar(qbar),.d(d),.clk(clk),.reset(reset));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("time=%0t | reset=%b | clk=%b | d=%b | q=%b |qbar=%b",$time,reset,d,q,qbar,clk);

d=0;reset=1;
#10;reset=0;
#10 d=1;
#10 d=0;
#10 d=1;
#10 reset=1;
#10 reset=0;
#20 $finish;
end
endmodule
