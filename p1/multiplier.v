module multiplier_8x8(en,a,b,product);
    input en;
    input [7:0] a; 
    input [7:0] b; 
    output [15:0] product; 

    assign product = (en) ? a * b : 16'bz;

endmodule
