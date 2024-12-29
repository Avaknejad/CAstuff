module inputRam (addrs,en, data1 , data2);

localparam ADDR_WIDTH = 5;
localparam DATA_WIDTH = 16;
localparam MEM_DEPTH = 32;

input en;
input [4:0] addrs;
output [15:0]data1, data2;

reg [DATA_WIDTH-1:0] memory [0:MEM_DEPTH-1];

    initial begin
        $readmemb("input_memory_data.txt", memory);
    end

assign data1 = (en) ? memory[addrs] : 16'bz;
assign data2 = (en) ? memory[addrs+1] : 16'bz;
endmodule