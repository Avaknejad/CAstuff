module C2 (
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
  input d00, d01, d10, d11, a1, b1, a0, b0;
  output reg out;

  integer fd;

  initial begin
    $system("c2.exe ");
  end

  wire s0, s1;
  assign s1 = a1 | b1;
  assign s0 = a0 & b0;
  always @(*) begin
    if (s1 == 1 && s0 == 1) begin
      out = d11;
    end
    if (s1 == 1 && s0 == 0) begin
      out = d10;
    end
    if (s1 == 0 && s0 == 1) begin
      out = d01;
    end
    if (s1 == 0 && s0 == 0) begin
      out = d00;
    end
  end
endmodule
