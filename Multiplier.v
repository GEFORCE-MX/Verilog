module Multiplier(
    input [3:0] a,
    input [3:0] b,
    output [7:0] p );
	 
	 
             wire [3:0]pp0,pp1,pp2,pp3;
             wire c1,c2,c3,c4,c5,c6,c7,c8;
             wire s1,s2,s3,s4,s5,s6;

assign pp0=a[0]*b[3:0];
assign pp1=a[1]*b[3:0];
assign pp2=a[2]*b[3:0];
assign pp3=a[3]*b[3:0];
assign p[0]=pp0[0];

Half_Adder HA1(pp0[1],pp1[0],p[1],c1);
Full_Adder FA1(c1,pp0[2],pp1[1],s1,c2);
Half_Adder HA2(s1,pp2[0],p[2],c3);
Full_Adder FA2(c2,c3,pp0[3],s2,c4);
Full_Adder FA3(s2,pp1[2],pp2[1],s3,c5);
Half_Adder HA3(s3,pp3[0],p[3],c6);
Full_Adder FA4(c4,c5,c6,s4,c7);
Full_Adder FA5(s4,pp1[3],pp2[2],s5,c8);
Full_Adder HA4(s5,pp3[1],p[4],c9);
Full_Adder FA6(c7,c8,c9,s6,c10);
Full_Adder FA7(s6,pp2[3],pp3[2],p[5],c11);
Full_Adder FA8(c10,c11,pp3[3],p[6],p[7]);
endmodule
