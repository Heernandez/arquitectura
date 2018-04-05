
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity ADDER is
    Port ( 
           a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : out  STD_LOGIC_VECTOR (31 downto 0));
end ADDER;

architecture Behavioral of ADDER is

begin

b <= a or "100";

end Behavioral;

