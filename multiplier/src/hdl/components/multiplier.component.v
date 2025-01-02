module Multiplier (
    clk,
    rst,
    start,

    v1,
    v2,

    out,
    ready
);
  input clk, rst;
  input start;

  input [7:0] v1, v2;

  output [15:0] out;
  output ready;

  wire co;
  wire loadV1, shiftV1, loadAccumulated, shiftAccumulated, count, selectAccumulated;

  MultiplierController u_MultiplierController (
      .clk              (clk),
      .rst              (rst),
      .start            (start),
      .co               (co),
      .loadV1           (loadV1),
      .shiftV1          (shiftV1),
      .loadAccumulated  (loadAccumulated),
      .shiftAccumulated (shiftAccumulated),
      .count            (count),
      .selectAccumulated(selectAccumulated),
      .ready            (ready)
  );

  MultiplierDataPath u_MultiplierDataPath (
      .clk              (clk),
      .rst              (rst),
      .v1               (v1),
      .v2               (v2),
      .loadV1           (loadV1),
      .shiftV1          (shiftV1),
      .loadAccumulated  (loadAccumulated),
      .shiftAccumulated (shiftAccumulated),
      .count            (count),
      .selectAccumulated(selectAccumulated),
      .co               (co),
      .out              (out)
  );



endmodule
