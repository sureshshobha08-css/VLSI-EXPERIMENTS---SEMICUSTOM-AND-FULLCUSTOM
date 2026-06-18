module jkff(input j,input k,input clk,output reg q,output qbar);
assign qbar=~q;
always @(posedge clk)
begin
if(j==1 && k==0)
q<=1;
else if(j==0 && k==1)
q<=0;
else if(j==1 && k==1)
q<=~q;
end
endmodule

