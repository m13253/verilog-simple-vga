module top(
    input clk, // 23.75 MHz
    output hsync,
    output vsync,
    output r,
    output g,
    output b
);
    wire [10:0] pos;
    reg [7:0] char;
    always @(posedge clk)
            char <= {pos[7], pos[6:0] >= 32 ? pos[6:0] : 7'd32};
    vga vga(clk, hsync, vsync, r, g, b, pos, char);
endmodule
