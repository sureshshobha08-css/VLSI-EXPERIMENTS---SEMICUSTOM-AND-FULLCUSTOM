module shift_and_add_binary_multiplier(clk,rst,a,b,c);
parameter m=4,n=4;
integer i;
input clk,rst;
input [m-1:0]a;
input [n-1:0]b;
output reg [m+n-1:0]c;
reg[m+n-1:0]a1;
reg[n-1:0]b1;
always @ (posedge clk or posedge rst)
begin 
if(rst)

c=0;

else
begin 
c=0;
a1[m-1:0]=a;
a1[m+n-1:m]=0;
b1=b;
for(i=0;i<n;i=i+1)
begin
if(b1[i]==1'b0)

c=c+0;

else if (b1[i]==1'b1)

c=c+(a1<<i);

end
end

end
endmodule

