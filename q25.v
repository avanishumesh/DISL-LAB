module q25(

input [15:0]a,
output reg [3:0]y
);
integer i;
reg found;
always @(*) begin
	found = 1'b0;
	y = 4'b0000;
	for(i = 15;i>=0;i = i-1) begin
		if(a[i]==1'b1 && found == 1'b0) begin
			y = i;
			found = 1'b1;
	end
end
end
endmodule
		
	
