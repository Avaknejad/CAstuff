module mutiplier_top (
    clk,
    rst,
    start,
    v1,
    v2,
    ready,
    out
);

input clk,rst,start;

input [7:0] v1,v2;

output [15:0] out;
output ready;

wire co, loadV1, loadAccumulated,  shiftAccumulated, shiftV1, count, selectAccumulated;


MultiplierController MUCNTR(
    .clk(clk),
    .rst(rst),
    .start(start),
    .co(co),
    .loadV1(loadV1),
    .loadAccumulated(loadAccumulated),
    .shiftAccumulated(shiftAccumulated),
    .shiftV1(shiftV1),
    .count(count),
    .selectAccumulated(selectAccumulated),
    .ready(ready)
);


MultiplierDataPath MUDP (
    .clk(clk),
    .rst(rst),
    .v1(v1),
    .v2(v2),
    .loadV1(loadV1),
    .shiftV1(shiftV1),
    .loadAccumulated(loadAccumulated),
    .shiftAccumulated(shiftAccumulated),
    .count(count),
    .selectAccumulated(selectAccumulated),
    .co(co),
    .out(out)
);


    
endmodule