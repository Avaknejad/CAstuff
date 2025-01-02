module Register #(
    parameter WIDTH
) (
    clk,
    rst,
    ld,
    in,
    out
);
  input clk, rst;
  input ld;
  input [WIDTH-1:0] in;
  output reg [WIDTH-1:0] out;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      out <= 0;
    end else if (ld) begin
      out <= in;
    end
  end
endmodule
