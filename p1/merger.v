module merger(en,result,worthless_bit,merge_result);

input   en;
input [15:0] result;
input [2:0] worthless_bit;
output reg [31:0] merge_result;

always @(*) begin
    if (en) begin
         case (worthless_bit)
       0 : merge_result = {result,16'b0};
       1 : merge_result = {1'b0, result, 15'b0}; 
       2 : merge_result = {2'b0, result, 14'b0}; 
       3 : merge_result = {3'b0, result, 13'b0}; 
       4 : merge_result = {4'b0, result, 12'b0}; 
       5 : merge_result = {5'b0, result, 11'b0}; 
       6 : merge_result = {6'b0, result, 10'b0}; 
       7 : merge_result = {7'b0, result, 9'b0}; 
       8 : merge_result = {8'b0, result, 8'b0}; 
       9 : merge_result = {9'b0, result, 7'b0}; 
       10: merge_result = {10'b0, result, 6'b0}; 
       11: merge_result = {11'b0, result, 5'b0}; 
       12: merge_result = {12'b0, result, 4'b0}; 
       13: merge_result = {13'b0, result, 3'b0}; 
       14: merge_result = {14'b0, result, 2'b0}; 
       15: merge_result = {15'b0, result, 1'b0}; 
       16: merge_result = {16'b0, result}; 
        default: merge_result = 32'b0;
    endcase
    end

    else begin
      merge_result = 32'bz;
    end
    
end

endmodule