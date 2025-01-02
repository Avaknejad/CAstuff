module MultiplierDataPath (
    clk,
    rst,

    v1,
    v2,

    loadV1,
    shiftV1,
    loadAccumulated,
    shiftAccumulated,
    count,
    selectAccumulated,

    co,
    out
);
  input clk, rst;
  input [7:0] v1, v2;
  input loadV1, shiftV1, loadAccumulated, shiftAccumulated, count, selectAccumulated;

  output co;
  output [15:0] out;

  wire coV1;
  wire [15:0] inAccumulated;
  wire [15:0] in0Adder, outAdder;
  wire [7:0] outMuxV2;

  assign in0Adder = {8'b0, outMuxV2};

  LeftShiftRegister #(8) u_LeftShiftRegister_V1 (
      .clk     (clk),
      .rst     (rst),
      .load    (loadV1),
      .shift   (shiftV1),
      .in      (v1),
      .out     (),
      .carryOut(coV1)
  );

  LeftShiftRegister #(16) u_LeftShiftRegister_Accumulator (
      .clk     (clk),
      .rst     (rst),
      .load    (loadAccumulated),
      .shift   (shiftAccumulated),
      .in      (inAccumulated),
      .out     (out),
      .carryOut()
  );

  Counter #(3) u_Counter (
      .clk  (clk),
      .rst  (rst),
      .in   (3'bz),
      .load (1'b0),
      .count(count),
      .out  (),
      .co   (co)
  );

  Adder #(16) u_Adder (
      .in0(in0Adder),
      .in1(out),
      .out(outAdder),
      .co ()
  );

  Mux2 #(8) u_Mux2_V2 (
      .in0(8'b0),
      .in1(v2),
      .sel(coV1),
      .out(outMuxV2)
  );

  Mux2 #(16) u_Mux2_Accumulator (
      .in0(outAdder),
      .in1(16'b0),
      .sel(selectAccumulated),
      .out(inAccumulated)
  );


endmodule
