

module top;
reg[3:0]A,B;
reg cin;
wire[3:0]Sum;
wire cout;
carry_select_adder u1(A,B,cin,Sum,cout);
initial
begin
A=4'b1000;B=4'b0010;cin=0;
#10;A=4'b0101;B=4'b0111;cin=1;
#10;A=4'b0110;B=4'b0100;cin=0;
#10;A=4'b1101;B=4'b0010;cin=1;
#10 $finish;
end
endmodule
