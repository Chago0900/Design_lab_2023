
module clock_divider #(parameter div_value = 1)(
	
	input 	wire		clk,
	output 	reg		divided_clk = 0 // 25MHz
	);
		
	// counter
	integer counter_value = 0; //32 bit
	
	always@ (posedge clk)
	begin
		
		if (counter_value == div_value)
			counter_value <= 0;
		
		else 
			counter_value <= counter_value + 1;
			
	end

// Dividir clk

	always@ (posedge clk)
	begin
		
		if (counter_value == div_value)
			divided_clk <= ~divided_clk;
			
		else
			divided_clk <= divided_clk;
	end
	
endmodule