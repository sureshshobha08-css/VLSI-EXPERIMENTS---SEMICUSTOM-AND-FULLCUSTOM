module test_four_bit_adder;
reg [3:0]a;
reg [3:0]b;
reg c0;
wire [3:0]s;
wire c4;

four_bit_adder uut (.a(a), .b(b), .c0(c0), .s(s), .c4(c4));

initial begin
  a = 4'b0111; b = 4'b0011; c0 = 1'b0;
  #10 a = 4'b0111; b = 4'b0111; c0 = 1'b1;
  #10 a = 4'b1111; b = 4'b1111; c0 = 1'b1;
  #10;
end

#50 $finish;
endmodule
