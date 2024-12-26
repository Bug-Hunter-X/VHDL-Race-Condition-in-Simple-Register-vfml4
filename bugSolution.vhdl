```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity my_entity is
  port (
    clk : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    data_out : out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of my_entity is
  signal data_reg : std_logic_vector(7 downto 0) := "00000000";
  signal data_reg2 : std_logic_vector(7 downto 0) := "00000000";
begin
  process (clk) begin
    if rising_edge(clk) then
      data_reg <= data_in; 
      data_reg2 <= data_reg;      
    end if;
  end process;
  data_out <= data_reg2;
end architecture;
```