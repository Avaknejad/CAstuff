library verilog;
use verilog.vl_types.all;
entity Multiplier is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        v1              : in     vl_logic_vector(7 downto 0);
        v2              : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0);
        ready           : out    vl_logic
    );
end Multiplier;
