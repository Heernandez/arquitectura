
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity sign is
    Port ( IMM : in  STD_LOGIC_VECTOR (12 downto 0);
           NIMM : out  STD_LOGIC_VECTOR (31 downto 0));
end sign;

architecture Behavioral of sign is

begin

	PROCESS (IMM) -- Lista sensiliva
		BEGIN
			IF IMM(12) = '0' THEN 
				NIMM (31 downto 13) := (others => '0');  
				NIMM <= NIMM OR IMM;
			ELSE 
				NIMM (31 downto 13) := (others => '1');  
				NIMM <= NIMM OR IMM;
			END IF;
	END PROCESS;


end Behavioral;

