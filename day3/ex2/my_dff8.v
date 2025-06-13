module my_dff8(
    input clk, 
    input [7:0] d,
    output reg [7:0] q
);
    // behavioral
    always @(posedge clk) begin 
        q <= d;
    end 
/*
    // data flow
    assign q = clk ? d : q;

    // structural
    wire q_in;
    nand(q_in, clk, d); 
    assign q = q_in;
*/
endmodule