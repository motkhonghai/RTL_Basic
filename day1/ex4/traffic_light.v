module traffic_light(
    input clk, rst_n, en, 
    output red_light, yellow_light, green_light,
    output [15:0] display_led
);

    parameter STATE_RED = 2'b00;
    parameter STATE_GREEN = 2'b01;
    parameter STATE_YELLOW = 2'b10;

    always @(posedge clk or negedge rst_n) begin 
        if(!rst_n) begin 

        end
    end 

    always @(*) begin 
        case(state) begin 
            
        endcase
    end 
endmodule