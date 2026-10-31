module qn2 #(parameter N = 8)(
input [N-1:0]d,
input clk,
output reg [N-1:0]q);

always @(posedge clk)
q<=d;
endmodule