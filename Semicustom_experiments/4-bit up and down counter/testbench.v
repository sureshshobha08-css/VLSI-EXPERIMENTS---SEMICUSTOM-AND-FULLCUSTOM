module counter_test;
reg clk,rst,m;
wire [3:0] count;
counter uut(.clk(clk),.m(m),.rst(rst),.count(count));
always #5 clk=~clk;
initial begin
clk=0;
rst=0;
#5;rst=1;
end

initial begin
m=0;
#165 m=1;
#150 m=0;
#150 m=1;
#150;

end
initial 
$monitor("Time=%t rst=%b clk=%b count=%b m=%b",$time,rst,clk,count,m);

initial 
#825 $finish;

endmodule
