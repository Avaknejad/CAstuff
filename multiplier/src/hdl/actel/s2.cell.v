
module S2 (
    clk,
    rst,
    d00,
    d01,
    d10,
    d11,
    a1,
    b1,
    a0,
    b0,
    out
);
  input clk, rst;
  input d00, d01, d10, d11, a1, b1, a0, b0;
  output out;

  wire c2Out;

  initial begin
    $system("s2-s1.exe ");
  end

  C2 u_C2 (
      .d00(d00),
      .d01(d01),
      .d10(d10),
      .d11(d11),
      .a1 (a1),
      .b1 (b1),
      .a0 (a0),
      .b0 (b0),
      .out(c2Out)
  );

  FDCP u_FDCP (
      .clk(clk),
      .rst(rst),
      .d  (c2Out),
      .q  (out)
  );

endmodule
