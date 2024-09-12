library ieee;
use ieee.std_logic_1164.all;

entity spi_read is
    port(
        clk_in : in std_logic;
        rst_in : in std_logic;
        en_in : in std_logic;

        -- spi port
        miso : in std_logic
    );
end entity;

architecture arch_spi_read of spi_read is

begin

end architecture;