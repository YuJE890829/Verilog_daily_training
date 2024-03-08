library verilog;
use verilog.vl_types.all;
entity fourbits_CLGadder_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        sum             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end fourbits_CLGadder_vlg_check_tst;
