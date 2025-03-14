module sim_moody_mimosa (
    input  wire [7:0]  ui_in,
    output wire [7:0]  uo_out,
    input  wire [7:0]  uio_in,
    output wire [7:0]  uio_out,
    output wire [7:0]  uio_oe,
    input  wire        ena,
    input  wire        clk,
    input  wire        rst_n,
    /* Debug information */
    output wire [6:0]  dbg_cortisol,
    output wire [6:0]  dbg_dopamine,
    output wire [6:0]  dbg_gaba,
    output wire [6:0]  dbg_norepinephrine,
    output wire [6:0]  dbg_serotonin,
    output wire [15:0] dbg_stimuli,
    output wire [9:0]  dbg_neurotransmitter_level,
    output wire [7:0]  dbg_emotional_state,
    output wire [7:0]  dbg_action,
    output wire [1:0]  dbg_heartbeat,
    output wire [7:0]  dbg_nourishment,
    output wire [7:0]  dbg_vital_energy,
    output wire [8:0]  dbg_illness
);

    wire [7:0] ui_in_model;
    wire clk_prescaled;

    // // Create model clock, 100 MHz prescaled by 2**24 (6 Hz)
    // static_clock_divider #(.N(2)) model_clk_divider (
    //     .clk(clk),
    //     .rst_n(rst_n),
    //     .clk_out(clk_prescaled)
    // );

    assign ui_in_model = { ui_in[7:1], clk};

    // Instantiate the actual moody mimosa module
    tt_um_moody_mimosa mimosa (
        .ui_in(ui_in_model),
        .uo_out(uo_out),
        .uio_in(uio_in),
        .uio_out(uio_out),
        .uio_oe(uio_oe),
        .ena(ena),
        .clk(clk),
        .rst_n(rst_n),
        .dbg_cortisol (dbg_cortisol),
        .dbg_dopamine (dbg_dopamine),
        .dbg_gaba (dbg_gaba),
        .dbg_norepinephrine (dbg_norepinephrine),
        .dbg_serotonin (dbg_serotonin),
        .dbg_stimuli (dbg_stimuli),
        .dbg_neurotransmitter_level (dbg_neurotransmitter_level),
        .dbg_emotional_state (dbg_emotional_state),
        .dbg_action (dbg_action),
        .dbg_heartbeat (dbg_heartbeat),
        .dbg_nourishment (dbg_nourishment),
        .dbg_vital_energy (dbg_vital_energy), 
        .dbg_illness (dbg_illness)
    );

endmodule