module shift_and_add_binary_multiplier_tb;
parameter m=4,n=4;
reg clk,rst;
reg[m-1:0]a;
reg[n-1:0]b;
wire[m+n-1:0] c;
shift_and_add_binary_multiplier uut(clk,rst,a,b,c);
initial begin
clk=1'b1;
forever #4 clk=~clk;
end
initial begin
rst=1;
#2 rst=0;
a=4'b1111;b=4'b1111;
#20 rst=1;
#2 rst=0;

a=4'b0011;b=4'b0011;

#20 rst=1;
#2 rst=0;
a=4'b1100;b=4'b0010;
#20;
end
initial begin 
#100 $finish;
end
endmodule

