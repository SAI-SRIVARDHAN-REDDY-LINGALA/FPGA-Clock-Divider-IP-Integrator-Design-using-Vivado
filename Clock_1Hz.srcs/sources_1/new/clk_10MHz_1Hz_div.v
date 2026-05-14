module clk_10MHz_1Hz_div (
    input  wire clk_10MHz,   // 10 MHz input clock
    input  wire Reset,        // Active-high reset
    output reg  clk_1Hz       // 1 Hz output clock
);

    reg [23:0] count;

    always @(posedge clk_10MHz or posedge Reset) begin
        if (Reset) begin
            count   <= 24'd0;
            clk_1Hz <= 1'b0;
        end
        else begin
            if (count == 24'd9_999_999) begin
                count   <= 24'd0;
                clk_1Hz <= ~clk_1Hz;
            end
            else begin
                count <= count + 1'b1;
            end
        end
    end

endmodule
