module carry_look_ahead_adder(a,b,cin,cout,s);
input[3:0]a,b;
input cin;
output[3:0]s;
output cout;
wire[3:0]p,g;
wire c1,c2,c3;
assign p=a^b;
assign g=a&b;
assign c0=cin;
assign c1=g[0] | (p[0] & c0);
assign c2=g[1] | (p[1] & g[0]) | (p[0] & p[1] & c0);
assign c3=g[2] | (p[2] & g[1]) | (p[1] & p[2] & g[0]) | (p[2] & p[1] & p[0] & c0);
assign cout=g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c0);
assign s[0]=p[0] ^ c0;
assign s[1]=p[1] ^ c1;
assign s[2]=p[2] ^ c2;
assign s[3]=p[3] ^ c3;
endmodule

 
