module alu_top_with_pads(
input PAD_CLK,
input PAD_RST,
input [7:0] PAD_A,
input [7:0] PAD_B,
input [3:0] PAD_SEL,
output [7:0] PAD_OUT
);

wire [7:0] out;

alu U0(
.clk(PAD_CLK),
.rst(PAD_RST),
.a(PAD_A),
.b(PAD_B),
.sel(PAD_SEL),
.out(out)
);

// =====================================
// Clock and Reset Pad Instantiations
// =====================================

pc3c01 pc3c01_1 (. CCLK ( alu_clk ) , . CP ( main_clk ) ) ; 		//Clock buffer
pc3d01 pc3d01_1 (. PAD ( main_clk_pad ) , . CIN ( alu_clk ) ) ;
pc3d01 pc3d01_2 (. PAD ( main_reset_pad ) , . CIN ( main_reset ) ) ;

// =====================================
// Input Pad Instantiations
// =====================================

// A [7:0]
pc3d01 pc3d01_3 (. PAD ( A_pad [0]) , . CIN ( A [0]) ) ;
pc3d01 pc3d01_4 (. PAD ( A_pad [1]) , . CIN ( A [1]) ) ;
pc3d01 pc3d01_5 (. PAD ( A_pad [2]) , . CIN ( A [2]) ) ;
pc3d01 pc3d01_6 (. PAD ( A_pad [3]) , . CIN ( A [3]) ) ;
pc3d01 pc3d01_7 (. PAD ( A_pad [4]) , . CIN ( A [4]) ) ;
pc3d01 pc3d01_8 (. PAD ( A_pad [5]) , . CIN ( A [5]) ) ;
pc3d01 pc3d01_9 (. PAD ( A_pad [6]) , . CIN ( A [6]) ) ;
pc3d01 pc3d01_10 (. PAD ( A_pad [7]) , . CIN ( A [7]) ) ;

// B [7:0]
pc3d01 pc3d01_11 (. PAD ( B_pad [0]) , . CIN ( B [0]) ) ;
pc3d01 pc3d01_12 (. PAD ( B_pad [1]) , . CIN ( B [1]) ) ;
pc3d01 pc3d01_13 (. PAD ( B_pad [2]) , . CIN ( B [2]) ) ;
pc3d01 pc3d01_14 (. PAD ( B_pad [3]) , . CIN ( B [3]) ) ;
pc3d01 pc3d01_15 (. PAD ( B_pad [4]) , . CIN ( B [4]) ) ;
pc3d01 pc3d01_16 (. PAD ( B_pad [5]) , . CIN ( B [5]) ) ;
pc3d01 pc3d01_17 (. PAD ( B_pad [6]) , . CIN ( B [6]) ) ;
pc3d01 pc3d01_18 (. PAD ( B_pad [7]) , . CIN ( B [7]) ) ;

// sel [3:0]
pc3d01 pc3d01_19 (. PAD ( sel_pad [0]) , . CIN ( sel [0]) ) ;
pc3d01 pc3d01_20 (. PAD ( sel_pad [1]) , . CIN ( sel [1]) ) ;
pc3d01 pc3d01_21 (. PAD ( sel_pad [2]) , . CIN ( sel [2]) ) ;
pc3d01 pc3d01_22 (. PAD ( sel_pad [3]) , . CIN ( sel [3]) ) ;

// =====================================
// Output Pad Instantiations
// =====================================

// result [7:0]
pc3o05 pc3o05_1 (. I ( result [0]) , . PAD ( result_pad [0]) ) ;
pc3o05 pc3o05_2 (. I ( result [1]) , . PAD ( result_pad [1]) ) ;
pc3o05 pc3o05_3 (. I ( result [2]) , . PAD ( result_pad [2]) ) ;
pc3o05 pc3o05_4 (. I ( result [3]) , . PAD ( result_pad [3]) ) ;
pc3o05 pc3o05_5 (. I ( result [4]) , . PAD ( result_pad [4]) ) ;
pc3o05 pc3o05_6 (. I ( result [5]) , . PAD ( result_pad [5]) ) ;
pc3o05 pc3o05_7 (. I ( result [6]) , . PAD ( result_pad [6]) ) ;
pc3o05 pc3o05_8 (. I ( result [7]) , . PAD ( result_pad [7]) ) ;

assign PAD_OUT = out;

endmodule
