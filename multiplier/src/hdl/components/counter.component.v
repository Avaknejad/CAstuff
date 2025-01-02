module Counter #(
    parameter WIDTH
) (
    clk,
    rst,
    in,
    load,
    count,
    out,
    co
);
  input clk, rst;
  input [WIDTH-1:0] in;
  input load, count;

  output reg [WIDTH-1:0] out;
  output reg co;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      {co, out} <= 0;
    end else if (load) begin
      {co, out} <= {1'b0, in};
    end else if (count) begin
      {co, out} <= out + 1;
    end
  end
endmodule
