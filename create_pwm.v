`timescale 10ns/1ns

module create_pwm(
	input clk,
	output led
	);
	
reg [15:0] counter;
always @(posedge clk)
	begin
		if(counter < 1200)
			counter <= counter + 1;
		else
			counter <= 0;
	end
assign led = (counter > 240 && counter < 480) ? 1 : 0;
endmodule