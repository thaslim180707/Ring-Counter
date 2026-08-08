//====================================================
// 4-bit Ring Counter
//====================================================

module ring_counter(
    input clk,
    input reset,
    output reg [3:0] count
);


// Ring Counter Operation
always @(posedge clk or posedge reset)
begin

    if(reset)
    begin
        // Initial state
        count <= 4'b0001;
    end

    else
    begin
        // Rotate left
        count <= {count[2:0], count[3]};
    end

end


endmodule