library verilog;
use verilog.vl_types.all;
entity LeftShiftRegister is
    generic(
        WIDTH           : vl_notype
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \in\            : in     vl_logic_vector;
        load            : in     vl_logic;
        shift           : in     vl_logic;
        \out\           : out    vl_logic_vector;
        carryOut        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 5;
end LeftShiftRegister;
