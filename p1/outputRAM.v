module outputRam (en,addrs, data);

localparam ADDR_WIDTH = 5;
localparam DATA_WIDTH = 32;
localparam MEM_DEPTH = 32;

input   en;
input [4:0] addrs;
input [31:0]data;

reg [DATA_WIDTH-1:0] memory [0:MEM_DEPTH-1];

    initial begin
        $readmemb("output_memory_data.txt", memory);
    end

assign memory[addrs] = (en) ? data : memory[addrs];
endmodule