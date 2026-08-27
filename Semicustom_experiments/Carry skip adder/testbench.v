module top;
reg[3:0]A,B;
reg Cin;
wire[3:0]Sum;
wire cout;
carry_bypass_skip_adder u1(A,B,Cin,Sum,cout);
initial
begin
A=4'b1000;B=4'b0010;Cin=4'b0;
#10;A=4'b0101;B=4'b0111;Cin=4'b1;
#10;A=4'b0110;B=4'b0100;Cin=4'b0;
#10;A=4'b1101;B=4'b0010;Cin=4'b1;
#10;A=4'b1111;B=4'b1111;Cin=4'b0;
#10 $finish;
end
endmodule

