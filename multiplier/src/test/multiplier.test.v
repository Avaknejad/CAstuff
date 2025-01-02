`timescale 1ns / 1ns

module MultiplierTest;

  localparam v1 = 8'd12;
  localparam v2 = 8'd167;

  reg clk, rst;
  reg start;

  wire [15:0] out;
  wire ready;
  mutiplier_top u_Multiplier (
      .clk  (clk),
      .rst  (rst),
      .start(start),
      .v1   (v1),
      .v2   (v2),
      .out  (out),
      .ready(ready)
  );

  initial begin
    clk = 0;
    forever begin
      #10 clk = ~clk;
    end
  end

  initial begin
    rst = 1;
    #50 rst = 0;
    start = 1;
    #50 start = 0;

    wait (ready == 1);
    #100
    $display("Ready signal is asserted.");

    if (out == v1 * v2) begin
      $display("==========>Test Passed!!!<==========");
    end else begin
      $display("==========>Test Failed!!!<==========");
    end
    $stop;
  end
endmodule
