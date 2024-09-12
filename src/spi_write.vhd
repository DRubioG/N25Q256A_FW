library ieee;
use ieee.std_logic_1164.all;

entity spi_write is
    port(
        clk_in : in std_logic;
        rst_in : in std_logic;
        en_in : in std_logic;

        -- spi ports
        mosi : out std_logic
    );
end entity;

architecture arch_spi_write of spi_write is

begin

end architecture;