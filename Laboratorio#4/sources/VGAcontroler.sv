module VGAcontroler (
	input CLOCK_50,
	//input move,
//	input select,
	input reset,
	
//	input up,
//   input down,
//   input left,
//   input right,
//	input [3:0] setMaxScore,
	
	output VGA_HS,
	output VGA_VS,
	output [7:0] VGA_R,
	output [7:0] VGA_G,
	output [7:0] VGA_B,
	output VGA_CLK,
	output VGA_SYNC_N,
	output VGA_BLANK_N
//	output finish,
//   output counting,
//   output finish_30sec
	);
	
	// indica al controlador del video que mostrar 
//   logic [11:0] block00;
//   logic [11:0] block01;
//   logic [11:0] block02;
//   logic [11:0] block03;
//   logic [11:0] block10;
//   logic [11:0] block11;
//   logic [11:0] block12;
//   logic [11:0] block13;
//   logic [11:0] block20;
//   logic [11:0] block21;
//   logic [11:0] block22;
//   logic [11:0] block23;
//   logic [11:0] block30;
//   logic [11:0] block31;
//   logic [11:0] block32;
//   logic [11:0] block33;
//	logic [11:0] selected;
//	logic [11:0] outCont;
//   wire [11:0] pos1,pos2,pos3,
//    pos4,pos5,pos6,pos7,pos8,pos9, pos10, pos11, pos12, pos13, pos14, pos15, pos16;
//	wire [11:0] board [3:0][3:0]; 
//	 
//   wire Px,Po;
//	wire[1:0]who;
	//contador cont(move,outCont);
	//selector sel (select,~reset,Px,Po);


//		assign pos1 = board[0][0];
//		assign pos2 = board[0][1];
//		assign pos3 = board[0][2];
//		assign pos4 = board[0][3];
//		assign pos5 = board[1][0];
//		assign pos6 = board[1][1];
//		assign pos7 = board[1][2];
//		assign pos8 = board[1][3];
//		assign pos9 = board[2][0];
//		assign pos10 = board[2][1];
//		assign pos11 = board[2][2];
//		assign pos12 = board[2][3];
//		assign pos13 = board[3][0];
//		assign pos14 = board[3][1];
//		assign pos15 = board[3][2];
//		assign pos16 = board[3][3];
	

	
	
	// ****************** MODIFY THIS VALUES BASED ON THE GAME LOGIC *******************
	// selector de imagenes: 00 or 11 = no sprite, 01 = sprite 1, 10 = sprite 2
	// Block 00
//	assign block00 = pos1;
//	// Block 01
//	assign block01 = pos2;
//	// Block 02
//	assign block02 = pos3;
//	// Block 10
//	assign block03 = pos4;
//	// Block 11
//	assign block10 = pos5;
//	// Block 12
//	assign block11 = pos6;
//	// Block 20
//	assign block12 = pos7;
//	// Block 21
//	assign block13 = pos8;
//	// Block 22
//	assign block20 = pos9;
//	// Block 01
//	assign block21 = pos10;
//	// Block 02
//	assign block22 = pos11;
//	// Block 10
//	assign block23 = pos12;
//	// Block 11
//	assign block30 = pos13;
//	// Block 12
//	assign block31 = pos14;
//	// Block 20
//	assign block32 = pos15;
//	// Block 21
//	assign block33 = pos16;
	
	
//	always@*
//	begin
//		if(who==2'b00)
//		selected <= outCont;
//		else
//		selected <= 4'b1111;
//	end
	
	// *******************************************************************************************
	
	
	
	video_controller VGA (
	CLOCK_50,
//   block00,
//	selected,
	VGA_HS,
	VGA_VS,
	VGA_R,
	VGA_G,
	VGA_B,
	VGA_CLK,
	VGA_SYNC_N,
	VGA_BLANK_N);
	
endmodule

