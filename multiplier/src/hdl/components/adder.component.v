module Adder #(
    parameter WIDTH
) (
    in0,
    in1,
    out,
    co
);
  input [WIDTH-1:0] in0, in1;
  output [WIDTH-1:0] out;
  output co;


  assign {co, out} = in0 + in1;
endmodule
