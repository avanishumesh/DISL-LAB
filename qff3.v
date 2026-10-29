module qff3(j,k,clock,reset,q);
input j,k,clock,reset;
output  reg q;



always @(posedge clock)
begin

if(reset)
q<=0;
else
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;

endcase
end
end
endmodule