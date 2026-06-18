module srff(input s,input r,input clk,output reg q,output qbar);
assign qbar = ~q;
always @(posedge clk)
begin 
if (s == 1 && r == 0)
q <= 1;
else if (s == 0 && r == 1)
q <= 0;
else if (s == 1 && r == 1)
q <= 1'bz;
end
endmodule 


 
