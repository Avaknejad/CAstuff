module separator(data1_i, data2_i, data1_o, data2_o, worthless_bit, discarded_bit);

input [15:0] data1_i, data2_i;
output reg [7:0] data1_o, data2_o;
output reg [4:0] worthless_bit, discarded_bit;

reg [3:0]  worthless_bit_a,  worthless_bit_b;
reg [3:0]  discarded_bit_a,  discarded_bit_b;

always @(*) begin
    case (data1_i)
    1xxxxxxxxxxxxxxx: begin
      data1_o = data1_i[15:8];
      worthless_bit_a = 4'h0;
      discarded_bit_a = 4'h8;
    end
    01xxxxxxxxxxxxxx:begin
      data1_o = data1_i[14:7];
      worthless_bit_a = 4'h1;
      discarded_bit_a = 4'h7;
    end
    001xxxxxxxxxxxxx:begin
      data1_o = data1_i[13:6];
      worthless_bit_a = 4'h2;
      discarded_bit_a = 4'h6;
    end
    0001xxxxxxxxxxxx:begin
      data1_o = data1_i[12:5];
      worthless_bit_a = 4'h3;
      discarded_bit_a = 4'h5;
    end
    00001xxxxxxxxxxx:begin
      data1_o = data1_i[11:4];
      worthless_bit_a = 4'h4;
      discarded_bit_a = 4'h4;
    end
    000001xxxxxxxxxx:begin
      data1_o = data1_i[10:3];
      worthless_bit_a = 4'h5;
      discarded_bit_a = 4'h3;
    end
    0000001xxxxxxxxx:begin
      data1_o = data1_i[9:2];
      worthless_bit_a = 4'h6;
      discarded_bit_a = 4'h2;
    end
    00000001xxxxxxxx:begin
      data1_o = data1_i[8:1];
      worthless_bit_a = 4'h7;
      discarded_bit_a = 4'h1;
    end
    000000001xxxxxxx:begin
      data1_o = data1_i[7:0];
      worthless_bit_a = 4'h8;
      discarded_bit_a = 4'h0;
    end
    0000000001xxxxxx:begin
      data1_o = data1_i[7:0];
      worthless_bit_a = 4'h8;
      discarded_bit_a = 4'h0;
    end
    00000000001xxxxx:begin
      data1_o = data1_i[7:0];
      worthless_bit_a = 4'h8;
      discarded_bit_a = 4'h0;
    end
    000000000001xxxx:begin
      data1_o = data1_i[7:0];
      worthless_bit_a = 4'h8;
      discarded_bit_a = 4'h0;
    end
    0000000000001xxx:begin
      data1_o = data1_i[7:0];
      worthless_bit_a = 4'h8;
      discarded_bit_a = 4'h0;
    end
    00000000000001xx:begin
      data1_o = data1_i[7:0];
      worthless_bit_a = 4'h8;
      discarded_bit_a = 4'h0;
    end
    000000000000001x:begin
      data1_o = data1_i[7:0];
      worthless_bit_a = 4'h8;
      discarded_bit_a = 4'h0;
    end
    0000000000000001:begin
      data1_o = data1_i[7:0];
      worthless_bit_a = 4'h8;
      discarded_bit_a = 4'h0;
    end

    default: 
endcase
end


always @(*) begin
    case (data2_i)
    1xxxxxxxxxxxxxxx: begin
      data2_o = data2_i[15:8];
      worthless_bit_b = 3'h0;
      discarded_bit_b = 3'h8;
    end
    01xxxxxxxxxxxxxx:begin
      data2_o = data2_i[14:7];
      worthless_bit_b = 3'h1;
      discarded_bit_b = 3'h7;
    end
    001xxxxxxxxxxxxx:begin
      data2_o = data2_i[13:6];
      worthless_bit_b = 3'h2;
      discarded_bit_b = 3'h6;
    end
    0001xxxxxxxxxxxx:begin
      data2_o = data2_i[12:5];
      worthless_bit_b = 3'h3;
      discarded_bit_b = 3'h5;
    end
    00001xxxxxxxxxxx:begin
      data2_o = data2_i[11:4];
      worthless_bit_b = 3'h4;
      discarded_bit_b = 3'h4;
    end
    000001xxxxxxxxxx:begin
      data2_o = data2_i[10:3];
      worthless_bit_b = 3'h5;
      discarded_bit_b = 3'h3;
    end
    0000001xxxxxxxxx:begin
      data2_o = data2_i[9:2];
      worthless_bit_b = 3'h6;
      discarded_bit_b = 3'h2;
    end
    00000001xxxxxxxx:begin
      data2_o = data2_i[8:1];
      worthless_bit_b = 3'h7;
      discarded_bit_b = 3'h1;
    end
    000000001xxxxxxx:begin
      data2_o = data2_i[7:0];
      worthless_bit_b = 3'h8;
      discarded_bit_b = 3'h0;
    end
    0000000001xxxxxx:begin
      data2_o = data2_i[7:0];
      worthless_bit_b = 3'h8;
      discarded_bit_b = 3'h0;
    end
    00000000001xxxxx:begin
      data2_o = data2_i[7:0];
      worthless_bit_b = 3'h8;
      discarded_bit_b = 3'h0;
    end
    000000000001xxxx:begin
      data2_o = data2_i[7:0];
      worthless_bit_b = 3'h8;
      discarded_bit_b = 3'h0;
    end
    0000000000001xxx:begin
      data2_o = data2_i[7:0];
      worthless_bit_b = 3'h8;
      discarded_bit_b = 3'h0;
    end
    00000000000001xx:begin
      data2_o = data2_i[7:0];
      worthless_bit_b = 3'h8;
      discarded_bit_b = 3'h0;
    end
    000000000000001x:begin
      data2_o = data2_i[7:0];
      worthless_bit_b = 3'h8;
      discarded_bit_b = 3'h0;
    end
    0000000000000001:begin
      data2_o = data2_i[7:0];
      worthless_bit_b = 3'h8;
      discarded_bit_b = 3'h0;
    end

    default: 
endcase
end


assign worthless_bit = worthless_bit_a + worthless_bit_b;
assign discarded_bit = discarded_bit_a + discarded_bit_b;
endmodule