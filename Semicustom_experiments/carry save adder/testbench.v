module top;
reg[3:0]A,B,C;
wire[4:0]Sum;
wire cout;
carry_save_adder u1(A,B,C,Sum,cout);
initial
begin
A=4'b1000;B=4'b0010;C=4'b0111;
#10;A=4'b0101;B=4'b0111;C=4'b1111;
#10;A=4'b0110;B=4'b0100;C=4'b1100;
#10;A=4'b1101;B=4'b0010;C=4'b1011;
#10;A=4'b1111;B=4'b1111;C=4'b1111;
#10 $finish;
end
endmodule

