module counter(clk,m,rst,count);
input clk,m,rst;
output reg [3:0] count;
always @(posedge clk or negedge rst)
begin
if (!rst)
count = 0;
else if(m)
count = count+1;
else
count = count-1;
end 
endmodule
