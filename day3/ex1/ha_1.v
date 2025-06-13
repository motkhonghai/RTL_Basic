module ha_1(
    input a, b,
    output sum, cout
);
    wire a_xor_b;
    wire a_and_b;

    // structural
    xor a_xor_b (sum, a, b);
    and a_and_b (cout, a, b);

/*    
    // dataflow 
    assign a_xor_b = a ^ b;
    assign a_and_b = a & b; 

    // behavior
    always @(*) begin 
        sum = a ^ b;
        cout = a & b;
    end 
*/
endmodule