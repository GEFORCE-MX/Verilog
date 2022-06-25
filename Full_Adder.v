module Full_Adder(x,y,c_in,s,c);

input x,y,c_in;
output s,c;

wire p,q,r;

xor(p,x,y);
and(q,x,y);
xor(s,p,c_in);
and(r,p,q);
or(c,z,q);


endmodule
