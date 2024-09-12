library ieee;
use ieee.std_logic_1164.all;

entity N25Q256A is
    port(
        clk_in : in std_logic;
        rst_in : in std_logic;
        en_in : in std_logic;

        -- SPI ports
        sclk : out std_logic;
        miso : in std_logic;
        mosi : out std_logic;
        cs : out std_logic
    );
end entity;

architecture arch_N25Q256A of N25Q256A is

begin



end architecture;