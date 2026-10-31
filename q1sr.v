module q1sr(I,clk,a);
input [5:0]I;
input clk;
output [5:0]a;

dff d1(I[0],clk,a[0]);
dff d2(I[1],clk,a[1]);
dff d3(I[2],clk,a[2]);
dff d4(I[3],clk,a[3]);
dff d5(I[4],clk,a[4]);
dff d6(I[5],clk,a[5]);

endmodule

module dff(d,clk,q);
input d,clk;
output reg q;

always @(posedge clk)
q<=d;
endmodule