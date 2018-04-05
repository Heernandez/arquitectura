
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity adder is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : out  STD_LOGIC_VECTOR (31 downto 0));
end adder;

architecture Behavioral of adder is

begin


	PROCESS (A) -- Lista sensiliva
		BEGIN
			B <= A or "00000000000000000000000000000100";
	END PROCESS;
	

end Behavioral;

