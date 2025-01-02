library verilog;
use verilog.vl_types.all;
entity MultiplierDataPath is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        v1              : in     vl_logic_vector(7 downto 0);
        v2              : in     vl_logic_vector(7 downto 0);
        loadV1          : in     vl_logic;
        shiftV1         : in     vl_logic;
        loadAccumulated : in     vl_logic;
        shiftAccumulated: in     vl_logic;
        count           : in     vl_logic;
        selectAccumulated: in     vl_logic;
        co              : out    vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end MultiplierDataPath;
