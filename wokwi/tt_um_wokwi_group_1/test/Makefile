# Makefile
# See https://docs.cocotb.org/en/stable/quickstart.html for more info

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog
SRC_DIR = $(PWD)/../src
PROJECT_SOURCES = \
    mux.v \
    cells.v \
    tt_um_subtile_factory_test.v \
    tt_um_wokwi_413387481972305921/wokwi/tt_um_wokwi_413387481972305921.v \
    tt_um_wokwi_413871526879619073/wokwi/tt_um_wokwi_413871526879619073.v \
    tt_um_wokwi_413917903548951553/wokwi/tt_um_wokwi_413917903548951553.v \
    tt_um_wokwi_413919500942601217/wokwi/tt_um_wokwi_413919500942601217.v \
    tt_um_wokwi_413919675346023425/wokwi/tt_um_wokwi_413919675346023425.v \
    tt_um_wokwi_413920442846133249/wokwi/tt_um_wokwi_413920442846133249.v \
    tt_um_wokwi_413921288682183681/wokwi/tt_um_wokwi_413921288682183681.v \
    tt_um_wokwi_413923188546028545/wokwi/tt_um_wokwi_413923188546028545.v \
    tt_um_wokwi_414118423095874561/wokwi/tt_um_wokwi_414118423095874561.v \
    tt_um_wokwi_414120295047458817/wokwi/tt_um_wokwi_414120295047458817.v \
    tt_um_wokwi_414120372939908097/wokwi/tt_um_wokwi_414120372939908097.v \
    tt_um_wokwi_414120378768943105/wokwi/tt_um_wokwi_414120378768943105.v \
    tt_um_wokwi_414120404427608065/wokwi/tt_um_wokwi_414120404427608065.v \
    tt_um_wokwi_414120526876163073/wokwi/tt_um_wokwi_414120526876163073.v \
    tt_um_wokwi_414120591467404289/wokwi/tt_um_wokwi_414120591467404289.v \
    tt_um_wokwi_414127944900611073/wokwi/tt_um_wokwi_414127944900611073.v

ifneq ($(GATES),yes)

# RTL simulation:
SIM_BUILD				= sim_build/rtl
VERILOG_SOURCES += $(addprefix $(SRC_DIR)/,$(PROJECT_SOURCES))
COMPILE_ARGS 		+= -I$(SRC_DIR)

else

# Gate level simulation:
SIM_BUILD				= sim_build/gl
COMPILE_ARGS    += -DGL_TEST
COMPILE_ARGS    += -DFUNCTIONAL
COMPILE_ARGS    += -DSIM
VERILOG_SOURCES += $(PDK_ROOT)/ihp-sg13g2/libs.ref/sg13g2_io/verilog/sg13g2_io.v
VERILOG_SOURCES += $(PDK_ROOT)/ihp-sg13g2/libs.ref/sg13g2_stdcell/verilog/sg13g2_stdcell.v

# this gets copied in by the GDS action workflow
VERILOG_SOURCES += $(PWD)/gate_level_netlist.v

endif

# Include the testbench sources:
VERILOG_SOURCES += $(PWD)/tb.v
TOPLEVEL = tb

# MODULE is the basename of the Python test file
MODULE = test

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
