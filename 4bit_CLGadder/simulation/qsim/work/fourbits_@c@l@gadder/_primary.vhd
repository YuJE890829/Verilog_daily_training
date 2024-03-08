library verilog;
use verilog.vl_types.all;
entity fourbits_CLGadder is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        cout            : out    vl_logic;
        sum             : out    vl_logic_vector(3 downto 0)
    );
end fourbits_CLGadder;
