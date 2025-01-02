module S1 (
    clk,
    rst,
    d00,
    d01,
    d10,
    d11,
    a1,
    b1,
    a0,
    out
);
  input clk, rst;
  input d00, d01, d10, d11, a1, b1, a0;
  output out;

  S2 u_S2 (
      .clk(clk),
      .rst(rst),
      .d00(d00),
      .d01(d01),
      .d10(d10),
      .d11(d11),
      .a1 (a1),
      .b1 (b1),
      .a0 (a0),
      .b0 (rst),
      .out(out)
  );

endmodule
