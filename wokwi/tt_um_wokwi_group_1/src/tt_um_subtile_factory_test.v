// SPDX-License-Identifier: Apache-2.0
// Copyright 2025, Tiny Tapeout LTD

`default_nettype none

module tt_um_subtile_factory_test (
    input wire [7:0] ui_in,  // Dedicated inputs
    output wire [7:0] uo_out,  // Dedicated outputs
    input wire [7:0] uio_in,  // Unavailable for subtile projects
    output wire [7:0] uio_out,  // Unavailable for subtile projects
    output wire [7:0] uio_oe,  // Unavailable for subtile projects
    input ena,
    input clk,
    input rst_n
);

  assign uio_out = 8'b0;
  assign uio_oe  = 8'b0;
  assign uo_out  = rst_n ? (clk ? ui_in : ~ui_in) : 8'b0;

  wire _unused_ = |{uio_in, ena};

endmodule
