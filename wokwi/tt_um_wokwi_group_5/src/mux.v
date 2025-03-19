`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_group_5(
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

  tt_um_wokwi_413387064715554817 proj__0 (.ui_in, .uo_out(proj_out[ 0]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_wokwi_413387076188030977 proj__1 (.ui_in, .uo_out(proj_out[ 1]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_wokwi_413387224567846913 proj__2 (.ui_in, .uo_out(proj_out[ 2]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_wokwi_413919465666386945 proj__3 (.ui_in, .uo_out(proj_out[ 3]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_wokwi_413919524873217025 proj__4 (.ui_in, .uo_out(proj_out[ 4]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_wokwi_413919775044656129 proj__5 (.ui_in, .uo_out(proj_out[ 5]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_wokwi_413919927206703105 proj__6 (.ui_in, .uo_out(proj_out[ 6]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  tt_um_wokwi_413921836641882113 proj__7 (.ui_in, .uo_out(proj_out[ 7]), .uio_in(0), .uio_out(), .uio_oe(), .ena, .clk, .rst_n);
  assign proj_out[8] = 0;
  assign proj_out[9] = 0;
  assign proj_out[10] = 0;
  assign proj_out[11] = 0;
  assign proj_out[12] = 0;
  assign proj_out[13] = 0;
  assign proj_out[14] = 0;
  assign proj_out[15] = 0;

  assign uo_out = proj_out[sel];
  assign uio_out = 8'b0;
  assign uio_oe = 8'b0;

endmodule
