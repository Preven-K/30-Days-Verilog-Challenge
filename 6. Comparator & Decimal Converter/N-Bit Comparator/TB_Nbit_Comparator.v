`timescale 1ns / 1ps

module TB_Nbit_Comparator;
	// Inputs
	reg [4:0] in_1,in_2;
	// Outputs
	wire Equal,Greater,Lesser;
	// Instantiate the Unit Under Test (UUT)
	Comparator_Nbit uut(in_1,in_2,Equal,Greater,Lesser);

	initial begin
		// Initialize Inputs
		in_1 = 0;
		in_2 = 0;
		// Wait 100 ns for global reset to finish
		#10;
		// Add stimulus here
        in_1 = 2;in_2 = 25;#10;
        in_1 = 6;in_2 = 18;#10;
        in_1 = 31;in_2 = 16;#10;
        in_1 = 9;in_2 = 9;#10;
        in_1 = 1;in_2 = 7;#10;
        end
endmodule
