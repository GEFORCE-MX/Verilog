module Half_Adder(x,y,s,c);

input x,y;
output s,c;



and(x,y,c);
xor(x,y,c_in);


endmodule
