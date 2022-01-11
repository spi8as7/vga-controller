`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:15:36 12/04/2015
// Design Name:   vgacontroller
// Module Name:   C:/Users/Stefanos/Desktop/Diktua/lab3/tb.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vgacontroller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg resetbutton;
	reg clk;

	// Outputs
	wire VGA_RED;
	wire VGA_GREEN;
	wire VGA_BLUE;
	wire VGA_HSYNC;
	wire VGA_VSYNC;

	// Instantiate the Unit Under Test (UUT)
	vgacontroller uut (
		.resetbutton(resetbutton), 
		.clk(clk), 
		.VGA_RED(VGA_RED), 
		.VGA_GREEN(VGA_GREEN), 
		.VGA_BLUE(VGA_BLUE), 
		.VGA_HSYNC(VGA_HSYNC), 
		.VGA_VSYNC(VGA_VSYNC)
	);

	initial begin
		// Initialize Inputs
		resetbutton = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		resetbutton = 0;

	
	end
always #10 clk = ~ clk;      
endmodule
