module Design_1(sum,cout,a,b,cin);
input a,b,cin;
output sum,cout;
assign sum = a^b^cin;
assign cout = (a&b) | (b&cin) | (cin&a);
endmodule

module Design_2(SUM,COUT,A,B,CIN);
input[3:0] A,B;
input CIN ;
output[3:0] SUM ;
output COUT;
wire w1,w2,w3;
Design_1 fa0( .a(A[0]), .b(B[0]), .cin(CIN), .sum(SUM[0]), .cout(w1));
Design_1 fa1( .a(A[1]), .b(B[1]), .cin(w1), .sum(SUM[1]), .cout(w2));
Design_1 fa2( .a(A[2]), .b(B[2]), .cin(w2), .sum(SUM[2]), .cout(w3));
Design_1 fa3(.a(A[3]),.b(B[3]),.cin(w3),.sum(SUM[3]),.cout(COUT));
endmodule
