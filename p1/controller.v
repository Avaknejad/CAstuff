`define IDLE 2'b00
`define READY 2'b01
`define CALC  2'b10
`define DONE 2'b11

module controller(clk,rst,start,done,en);
    input clk,rst,start;
    output done, en;

    reg [1:0]ps,ns;

    always @(posedge clk, negedge rst ) begin
        if(!rst)begin
          ns < = `IDLE;
        end
        else begin
          case (ps)
            `IDLE: ns <= (start) ? `READY : `IDLE; 
            `READY: ns <= (start) ? `READY : `CALC;
            `CALC: ns <= `DONE;
            `DONE: ns <= `IDLE;
            default: ns <= `IDLE;
          endcase
        end
    end

    always @(*) begin
        if (!rst) begin
            {done , en} =2'b0;
        end
        else begin
          {done , en} =2'b0;
          case (ps)
            `IDLE: begin done = 1'b0; en=1'b0; end
            `READY: begin done = 1'b0; en =1'b0; end
            `CALC: begin en =1'b1; end
            `DONE: begin done =1'b1;end 
            default: {done , en} =2'b0;
          endcase
        end
    end

    always @(posedge clk, negedge rst) begin
        if(!rst)begin
          ps < = `IDLE;
        end
        else begin
          ps <= ns;
        end
    end
endmodule