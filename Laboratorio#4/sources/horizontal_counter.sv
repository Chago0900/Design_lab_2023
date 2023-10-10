
// Contador horizontal

// Submódulo de VGA_Controller

module horizontal_counter (

    input  logic			clk_25MHz,          		// 25 MHz clock input

    output logic [15:0] H_Count_Value = 0,    	// 10-bit blue color output
    output logic        enable_V_Counter = 0    // 10-bit blue color output
);

	always@(posedge clk_25MHz) begin
		
		if (H_Count_Value < 799) begin
			H_Count_Value <= H_Count_Value + 1;
			enable_V_Counter <= 0;					// Desactivar contador vertical
		end
		else begin
			H_Count_Value <=0;						// Reinicia el contador horizontal
			enable_V_Counter <= 1;					// disparador del contador V
		end
	end
	
endmodule
