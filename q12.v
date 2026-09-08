module q12(a,b,cout,sum);
input a,b;
output cout,sum;

assign sum = a^b;
assign cout = a&b;

endmodule