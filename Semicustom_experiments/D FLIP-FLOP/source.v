module dff(q,qbar,d,clk,reset);
output reg q;
output qbar;
input d,clk,reset;
always @ (posedge clk)
begin
if (reset==1'b1)
q <= 1'b0;
else
q <= d;
end
assign qbar =  ~q;
endmodule
