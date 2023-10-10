
// Testbench del controlador de VGA 

module VGA_Controller_tb;

	logic 	clk = 0;
	logic 			Hsync;
	logic 			Vsync;
	logic [3 : 0]	Red;
	logic [3 : 0]	Green;
	logic [3 : 0]	Blue;

	
	VGA_Controller UUT (clk, Hsync, Vsync, Red, Green, Blue);
	
	always #5 clk = ~clk;


	
endmodule