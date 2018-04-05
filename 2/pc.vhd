
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity pc is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : out  STD_LOGIC_VECTOR (31 downto 0));
end pc;

architecture Behavioral of pc is

begin


PROCESS (A) -- Lista sensiliva
		BEGIN
			B <= A;
	END PROCESS;

end Behavioral;

