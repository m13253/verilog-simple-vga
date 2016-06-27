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
        char <= pos[0] ? 65 : (128+66);
    vga vga(clk, hsync, vsync, r, g, b, pos, char);
endmodule
