module decoder(
    input [1:0] in, 
    input enable,
    output [3:0] out 
);
    assign out = en ? (4'b0001 << in) : 4'b0000;
endmodule 