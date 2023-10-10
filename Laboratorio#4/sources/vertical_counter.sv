
// Contador vertical

// Submódulo de VGA_Controller

module vertical_counter (

    input  logic			clk_25MHz,          		// 25 MHz clock input

    output logic [15:0] V_Count_Value = 0,    	
    output logic        enable_V_Counter = 0    
);

	always@(posedge clk_25MHz) begin
	
		if (enable_V_Counter == 1'b1) begin
			if (V_Count_Value < 524 && enable_V_Counter == 1'b1) 
				V_Count_Value <= V_Count_Value + 1;
			
			else 
				V_Count_Value <=0;						
			end
		end
	
endmodule