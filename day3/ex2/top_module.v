module top_module (
    input clk, 
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);
    wire [7:0] q_in_1;
    wire [7:0] q_in_2;
    wire [7:0] q_in_3;

    my_dff8 dff_1 (
        .clk(clk),
        .d(d),
        .q(q_in_1)
    );

    my_dff8 dff_2 (
        .clk(clk),
        .d(q_in_1),
        .q(q_in_2)
    );

    my_dff8 dff_3 (
        .clk(clk),
        .d(q_in_2),
        .q(q_in_3)
    );

    mux_41 mux (
        .sel(sel),
        .d0(d),
        .d1(q_in_1),
        .d2(q_in_2),
        .d3(q_in_3),
        .q(q)
    );
endmodule