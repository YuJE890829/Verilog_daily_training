library verilog;
use verilog.vl_types.all;
entity ADDS4 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic;
        cout            : out    vl_logic;
        s               : out    vl_logic_vector(3 downto 0);
        over_flow       : out    vl_logic
    );
end ADDS4;
