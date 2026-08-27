
module carry_select_adder(input[3:0]A,B,input cin,output[3:0]Sum,output cout );
wire c1,c2,c3,cout1;
wire[3:0]s1;
full_adder fa1(A[0],B[0],1'b0,s1[0],c1);
full_adder fa2(A[1],B[1],c1,s1[1],c2);
full_adder fa3(A[2],B[2],c2,s1[2],c3);
full_adder fa4(A[3],B[3],c3,s1[3],cout1);

wire c4,c5,c6,cout2;
wire[3:0]s2;
full_adder fa5(A[0],B[0],1'b1,s2[0],c4);
full_adder fa6(A[1],B[1],c4,s2[1],c5);
full_adder fa7(A[2],B[2],c5,s2[2],c6);
full_adder fa8(A[3],B[3],c6,s2[3],cout2);

assign Sum={4{cin}}?s2:s1;
  
/* another way
assign Sum[0]=cin?s2[0]:s1[0];
assign Sum[1]=cin?s2[1]:s1[1];
assign Sum[2]=cin?s2[2]:s1[2];
assign Sum[3]=cin?s2[3]:s1[3];
*/
  
assign cout=cin?cout2:cout1;
endmodule

module full_adder(input A,B,cin,output Sum,cout);
assign Sum=A^B^cin;
assign cout=(A&B)|(B&cin)|(cin&A);
endmodule
