module D_FF(d,clk,reset,q,q_bar);

input d,clk,reset;
output q,q_bar;

wire d,clk,reset;
reg q,q_bar;

always @(posedge clk) begin

if(reset) begin
q=1'b0;
q_bar=1'b1;

end else begin

case(d)
1'b0: begin q=1'b0; q_bar=1'b1; end
1'b1: begin q=1'b1; q_bar=1'b0; end
endcase

end 

end

endmodule
