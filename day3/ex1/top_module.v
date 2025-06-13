module top_module (
    input [31:0] a, b,
    input cin, 
    output [31:0] sum,
    output cout
);
    wire [1:0] cin_tmp;

    add_16  add_16_1 (  
        .a(a[15:0]),  
        .b(b[15:0]),    
        .cin(cin),          
        .sum(sum[15:0]), 
        .cout(cin_tmp[0])
    );
    add_16  add_16_2 (
        .a(a[31:16]), 
        .b(b[31:16]),   
        .cin(cin_tmp[0]),   
        .sum(sum[31:16]), 
        .cout(cin_tmp[1])
    );
    assign cout = cin_tmp[1];
endmodule