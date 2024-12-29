module top_module(clk,rst,start,addrs_i,addrs_o,done);

input clk,rst,start;
input [4:0] addrs_i,addrs_o;
output done;
wire en;
datapath DP(.addrs_i({addrs_i[4:1].1'b0}),.addrs_o(addrs_o),.en(en));
controller CNTR(.clk(clk),.rst(rst),.start(start),.done(done),.en(en));

endmodule