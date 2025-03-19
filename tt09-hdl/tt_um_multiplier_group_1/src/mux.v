`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_multiplier_group_1(
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,    // Dedicated outputs
  input  wire [7:0] uio_in,    // IOs: Input path
  output wire [7:0] uio_out,    // IOs: Output path
  output wire [7:0] uio_oe,    // IOs: Enable path (active high: 0=input, 1=output)
  input ena,
  input clk,
  input rst_n
);

  wire [3:0] sel = uio_in[3:0];
  wire [7:0] proj_out[15:0];

  tt_um_4x4_array_multiplier_NuKoP      proj__0 (.ui_in, .uo_out(proj_out[ 0]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_4x4multiplier                   proj__1 (.ui_in, .uo_out(proj_out[ 1]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_A_6_array_multiplier            proj__2 (.ui_in, .uo_out(proj_out[ 2]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_B_14_array_multiplier           proj__3 (.ui_in, .uo_out(proj_out[ 3]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_C6_array_multiplier             proj__4 (.ui_in, .uo_out(proj_out[ 4]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_C8_array_mult                   proj__5 (.ui_in, .uo_out(proj_out[ 5]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_C_1_4bit_multiplier             proj__6 (.ui_in, .uo_out(proj_out[ 6]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_LabA_Group11                    proj__7 (.ui_in, .uo_out(proj_out[ 7]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_SarpHS_array_mult               proj__8 (.ui_in, .uo_out(proj_out[ 8]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_a3_array_multiplier             proj__9 (.ui_in, .uo_out(proj_out[ 9]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_a_0_array_multiplier            proj_10 (.ui_in, .uo_out(proj_out[10]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_a_4_array_multiplier            proj_11 (.ui_in, .uo_out(proj_out[11]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_arrayMultFajrSahana             proj_12 (.ui_in, .uo_out(proj_out[12]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_array_mult_joe_leighthardt      proj_13 (.ui_in, .uo_out(proj_out[13]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_array_mult_structural           proj_14 (.ui_in, .uo_out(proj_out[14]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_array_mult_structural_GnahsLliw proj_15 (.ui_in, .uo_out(proj_out[15]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);

  assign uo_out = proj_out[sel];
  assign uio_out = 8'b0;
  assign uio_oe = 8'b0;

endmodule
