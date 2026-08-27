module carry_save_adder(input[3:0]A,B,C,output[4:0]Sum,output cout );
wire[3:0]cin;
wire[3:0]s1;
full_adder fa1(A[0],B[0],C[0],s1[0],cin[0]);
full_adder fa2(A[1],B[1],C[1],s1[1],cin[1]);
full_adder fa3(A[2],B[2],C[2],s1[2],cin[2]);
full_adder fa4(A[3],B[3],C[3],s1[3],cin[3]);

wire c1,c2,c3;
assign Sum[0]=s1[0];

full_adder fa5(s1[1],cin[0],1'b0,Sum[1],c1);
full_adder fa6(s1[2],cin[1],c1,Sum[2],c2);
full_adder fa7(s1[3],cin[2],c2,Sum[3],c3);
full_adder fa8(1'b0,cin[3],c3,Sum[4],cout);
endmodule

/*another way
assign {cout,Sum}=s1+(cin<<1);
*/

module full_adder(input A,B,C,output Sum,cout);
assign Sum=A^B^C;
assign cout=(A&B)|(B&C)|(C&A);
endmodule

