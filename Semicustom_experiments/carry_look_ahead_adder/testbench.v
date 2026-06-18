module carry_look_ahead_adder_test;
reg[3:0]a,b;
reg cin;
wire[3:0]s;
wire cout;
carry_look_ahead_adder uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial begin
$monitor ("Time=%0t | a=%0t |b=%b | cin=%b | s=%b | cout=%b ",$time,a,b,cin,s,cout);

a=4'b0011; b=4'b0011; cin=1'b0;
#10; a=4'b1011; b=4'b0111; cin=1'b1;
#10; a=4'b1111; b=4'b1111; cin=1'b1;
#10;
end
initial 
#50 $finish;
endmodule
