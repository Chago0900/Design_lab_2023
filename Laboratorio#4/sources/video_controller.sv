module video_controller (
    input logic clk,
//    input logic [11:0] block00,
//
//    input logic [3:0] selected,
    output logic h_synq,
    output logic v_synq,
    output logic [7:0] red,
    output logic [7:0] green,
    output logic [7:0] blue,
    output logic clk_25mhz,
    output logic sync_n,
    output logic blank_n
    );
	
	logic [23:0] pixel_data;
	// VGA variables de control 
	logic enable_v_counter;
	logic [15:0] h_count_value;
	logic [15:0] v_count_value;

	 
    logic [7:0] white;
    logic [7:0] black;
//    logic [15:0] address;
	
	// Clock divider
	clock_divider vga_clock_gen (clk, clk_25mhz);
	
	// Counters
	horizontal_counter vga_horizontal (clk_25mhz, enable_v_counter, h_count_value);
	vertical_counter vga_Vertical (clk_25mhz, enable_v_counter, v_count_value);
	
	// vertical y horizontal sync basados en los estandares C:\Users\1001001164\Documents\UNIVERSIDAD\Virtual\2023\LAB\LabFabian\Laboratorio4\Convertidordeimagenes
	assign h_synq = (h_count_value < 96) ? 1'b1:1'b0;
	assign v_synq = (v_count_value < 2) ? 1'b1:1'b0;
	

	// Colores
	assign white = 8'hFF;
	assign black = 8'h00;
	

	always @*
	begin
    // Bloque 00 - Red Square in the middle of the screen
    if (h_count_value >= 100 && h_count_value <= 300 && v_count_value >= 250 && v_count_value <= 450)
    begin
        red <= 8'h0;
        green <= 8'hFF;
        blue <= 8'hFF;
    end 
    else
    begin
        red = 8'hFF;
        green = 8'h0;
        blue = 8'hFF;
    end
	end
	
	assign sync_n = 1'b0;
	assign blank_n = 1'b1;
	
endmodule
	