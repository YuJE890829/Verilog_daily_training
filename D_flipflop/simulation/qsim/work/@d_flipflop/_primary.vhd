library verilog;
use verilog.vl_types.all;
entity D_flipflop is
    port(
        d               : in     vl_logic;
        clk             : in     vl_logic;
        w_en            : in     vl_logic;
        reset           : in     vl_logic;
        \out\           : out    vl_logic
    );
end D_flipflop;
