library verilog;
use verilog.vl_types.all;
entity fourbits_adder_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        sum             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end fourbits_adder_vlg_check_tst;
