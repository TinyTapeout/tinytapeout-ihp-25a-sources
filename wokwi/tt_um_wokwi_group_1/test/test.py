# SPDX-License-Identifier: Apache-2.0
# SPDX-FileCopyrightText: © 2025 Tiny Tapeout

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, FallingEdge, RisingEdge, NextTimeStep


@cocotb.test()
async def test_muxed_factory_test(dut):
    dut._log.info("Start")

    # Set the clock period to 10 us (100 KHz)
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    # Reset
    dut._log.info("Reset")
    dut.ena.value = 1
    dut.rst_n.value = 1

    # Select factory test subtile:
    dut.uio_in.value = 15

    await ClockCycles(dut.clk, 1)

    for i in range(256):
        dut.ui_in.value = i
        # When clock is high, the output is the input
        await RisingEdge(dut.clk)
        await NextTimeStep()
        assert dut.uo_out.value == i
        # When clock is low, the output is the inverse of the input
        await FallingEdge(dut.clk)
        await NextTimeStep()
        assert dut.uo_out.value == (~i & 0b11111111)
        # When rst_n is low, the output is always 0
        dut.rst_n.value = 0
        await RisingEdge(dut.clk)
        await NextTimeStep()
        assert dut.uo_out.value == 0
        await FallingEdge(dut.clk)
        await NextTimeStep()
        assert dut.uo_out.value == 0
        dut.rst_n.value = 1

    dut._log.info("Done")
