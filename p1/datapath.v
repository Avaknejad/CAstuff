module datapath(addrs_i,addrs_o,en);
    input  [4:0] addrs_i, addrs_o;
    input en;

    wire [15:0] data1 , data2;
    wire [7:0] a,b;
    wire [15:0] product;
    wire [31:0] merge_result;
    wire [4:0] worthless_bit; 
inputRam IR(.en(en), .addrs(addrs_i), .data1(data1) , .data2(data2));

merger MG(.en(en), .result(product),.worthless_bit(worthless_bit),.merge_result(merge_result));

multiplier_8x8 MUL(.en(en), .a(a),.b(b),.product(product));

outputRam OR(.en(en), .addrs(addrs_o), .data(merge_result));

separator SP(.data1_i(data1), .data2_i(data2), .data1_o(a), .data2_o(b),
             .worthless_bit(worthless_bit), .discarded_bit());


endmodule