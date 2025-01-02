module LeftShiftRegister #(
    parameter WIDTH
) (
    clk,
    rst,

    in,

    load,
    shift,

    out,
    carryOut
);
  input clk, rst, load, shift;
  input [WIDTH-1:0] in;

  output reg [WIDTH-1:0] out;
  output reg carryOut;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      {carryOut, out} <= 0;
    end else if (load) begin
      {carryOut, out} <= {1'b0, in};
    end else if (shift) begin
      {carryOut, out} <= {out[WIDTH-1:0], 1'b0};
    end
  end
endmodule
