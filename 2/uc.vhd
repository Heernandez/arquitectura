
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity uc is
    Port ( OP2 : in  STD_LOGIC_VECTOR (1 downto 0);
           OP3 : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (3 downto 0));
end uc;

architecture Behavioral of uc is

begin


PROCESS (OP2,OP3) -- Lista sensiliva
		BEGIN
			CASE OP3 IS
				WHEN "000001" =>    ALUOP <= "0001"; --add
				WHEN "000101" =>    ALUOP <= "0010"; --addn
				WHEN "000010" =>    ALUOP <= "0011"; --or
				WHEN "000110" =>    ALUOP <= "0100"; --orn
				WHEN "000011" =>    ALUOP <= "0101"; --xor
				WHEN "010111" =>    ALUOP <= "0110"; --xnor
				WHEN "000000" =>    ALUOP <= "0111"; --ad
				WHEN "000100" =>    ALUOP <= "1000"; --sub
				WHEN  OTHERS  =>    ALUOP <= "0000";
			
			END CASE;
END PROCESS;


end Behavioral;

