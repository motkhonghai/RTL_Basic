module tb_mux_4_1();
    reg d0,d1,d2,d3;
    reg [1:0] sel;
    wire y;

    mux_4_1 dut(
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .sel(sel),
        .y(y)
    );

    initial begin 
	$dumpfile("sim.out");
	$dumpvars(0, tb_mux_4_1);
    end

    initial begin
        d0 = 0; d1 = 1; d2 = 0; d3 = 1;
        #10;
        sel = 00;
        #10;
        sel = 01;
        #10;
        sel = 10;
        #10;
        sel = 11;
        #10;
        $finish;
    end
endmodule
