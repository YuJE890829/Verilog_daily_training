library verilog;
use verilog.vl_types.all;
entity fourbits_CLGadder_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fourbits_CLGadder_vlg_sample_tst;
