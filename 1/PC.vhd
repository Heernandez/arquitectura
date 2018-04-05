
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity PC is
    Port ( pcaddr : in  STD_LOGIC_VECTOR (31 DOWNTO 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           pcout : out  STD_LOGIC_VECTOR (31 DOWNTO 0) 
			  );
end PC;

architecture Behavioral of PC is

begin

proceso1:
	process(clk,rst)
	begin
	
		IF rst = '1' THEN
			pcout <= (others => '0') ;   --pcout <= "00000000000000000000000000000000";
		ELSIF (rising_edge(clk)) then   --clk'EVENT AND clk = '1' THEN
			pcout<= pcaddr;
			
		END IF;
	END PROCESS;

end Behavioral;

