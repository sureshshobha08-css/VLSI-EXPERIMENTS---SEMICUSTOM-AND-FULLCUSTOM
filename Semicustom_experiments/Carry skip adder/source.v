module carry_bypass_skip_adder(input[3:0]A,B,input Cin,output[3:0]Sum,output cout );
wire c1,c2,c3,c4;
full_adder fa1(A[0],B[0],Cin,Sum[0],c1);
full_adder fa2(A[1],B[1],c1,Sum[1],c2);
full_adder fa3(A[2],B[2],c2,Sum[2],c3);
full_adder fa4(A[3],B[3],c3,Sum[3],c4);
wire[3:0]P;
wire p_block;
assign P=A^B;
assign p_block=&P;
assign cout=p_block ? Cin:c4;
endmodule

module full_adder(input A,B,Cin,output Sum,cout);
assign Sum=A^B^Cin;
assign cout=(A&B)|(B&Cin)|(Cin&A);
endmodule

