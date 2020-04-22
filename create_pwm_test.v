`timescale 10ns/1ns

module create_pwm_test;
	reg clk = 0;
	wire led;
	
	create_pwm DUT(.clk(clk), .led(led));
	always
		#5 clk = ~clk;
	
	initial
		begin
			$dumpfile("create_pwm_test.vcd");
			$dumpvars(0, create_pwm_test);
			$monitor($time, "clk = %b, led = %b", clk, led);
			#10000 $finish;
		end
endmodule