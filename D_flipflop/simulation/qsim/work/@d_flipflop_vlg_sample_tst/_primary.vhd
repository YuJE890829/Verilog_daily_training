library verilog;
use verilog.vl_types.all;
entity D_flipflop_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic;
        reset           : in     vl_logic;
        w_en            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end D_flipflop_vlg_sample_tst;
