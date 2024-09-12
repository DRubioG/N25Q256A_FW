library ieee;
use ieee.std_logic_1164.all;

entity spi_controller is
    port(
        clk_in : in std_logic;
        rst_in : in std_logic;
        en_in : in std_logic;

        -- spi ports
        clk_out : out std_logic;
        cs_out : out std_logic
    );
end entity;

architecture arch_spi_controller of spi_controller is

begin

end architecture;