`timescale 1ns/1ps

module tb;

    reg         clk;
    reg         rst_n;
    reg         ena;
    reg  [7:0]  ui_in;
    reg  [7:0]  uio_in;

    wire [7:0]  uo_out;
    wire [7:0]  uio_out;
    wire [7:0]  uio_oe;


    // ============================================================
    // DUT
    //
    // Keep the instance name "user_project" because the Cocotb
    // test accesses internal RTL signals using:
    //
    //     dut.user_project....
    // ============================================================

    tt_um_nobleg30_uart_vga_scroller user_project (
        .ui_in   (ui_in),
        .uo_out  (uo_out),

        .uio_in  (uio_in),
        .uio_out (uio_out),
        .uio_oe  (uio_oe),

        .ena     (ena),
        .clk     (clk),
        .rst_n   (rst_n)
    );


    // ============================================================
    // Waveform dump
    // ============================================================

    initial begin

        $dumpfile("tb.vcd");
        $dumpvars(0, tb);

    end


endmodule
