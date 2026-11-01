module q3(
input clk,
input reset,
output reg [2:0]q
);

always @(posedge clk)
begin

if(reset)
q = 0;
else if(q == 7)
q<=0;
else if(q == 3)
q<=5;
else if(q == 5)
q<=7;
else
q<={q[1:0],~q[2]};
end
endmodule

