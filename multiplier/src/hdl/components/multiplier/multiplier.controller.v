`define IDLE 2'd0
`define START 2'd1
`define SHIFTING 2'd2
`define ADDING 2'd3

module MultiplierController (
    clk,
    rst,

    start,
    co,

    loadV1,
    loadAccumulated,
    shiftAccumulated,
    shiftV1,
    count,
    selectAccumulated,
    ready
);
  input clk, rst;
  input start, co;

  output reg loadV1, shiftV1, loadAccumulated, shiftAccumulated, count, selectAccumulated, ready;

  reg [1:0] ps, ns;

  always @(posedge clk or negedge rst) begin
    if (rst) begin
      ps <= `IDLE;
    end else begin
      ps <= ns;
    end
  end

  always @(ps, start, co) begin
    case (ps)
      `IDLE: begin
        ns = start ? `START : `IDLE;
      end
      `START: begin
        ns = start ? `START : `ADDING;
      end
      `SHIFTING: begin
        ns = `ADDING;
      end
      `ADDING: begin
        ns = co ? `IDLE : `SHIFTING;
      end
      default: ns = `IDLE;
    endcase
  end

  always @(ps) begin
    {loadV1, shiftV1, loadAccumulated, shiftAccumulated, selectAccumulated, ready, count} = 0;
    case (ps)
      `IDLE: begin
        ready = 1'b1;
      end
      `START: begin
        loadV1 = 1'b1;
        selectAccumulated = 1'b1;
        loadAccumulated = 1'b1;
      end
      `SHIFTING: begin
        shiftAccumulated = 1'b1;
      end
      `ADDING: begin
        loadAccumulated = 1'b1;
        shiftV1 = 1'b1;
        count = 1'b1;
      end
      default: ;
    endcase
  end
endmodule
