
// Módulo controlador de VGA

module VGA_Controller (
    input logic clk,          	// 50 MHz clock input
    output logic Hsync,      	 	// Horizontal sync output
    output logic Vsync,       	// Vertical sync output
    output logic [3:0] Red,   	// 10-bit red color output
    output logic [3:0] Green,  	// 10-bit green color output
    output logic [3:0] Blue    	// 10-bit blue color output
);

logic clk_25M;
clock_divider VGA_Clock_gen (clk, clk_25M);
horizontal_counter VGA_Horiz (clk_25M, H_Count_Value, enable_V_Counter);
vertical_counter VGA_Verti (clk_25M, V_Count_Value, enable_V_Counter);


// Outputs

assign Hsync = (H_Count_Value < 96) ? 1'b1 : 1'b0;
assign Vsync = (V_Count_Value < 2) ? 1'b1 : 1'b0;

// Colores - todos los colores en high = pantalla en blanco

assign Red = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? 4'hF : 4'h0;
assign Green = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? 4'hF : 4'h0;
assign Blue = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? 4'hF : 4'h0;


endmodule