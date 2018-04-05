
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity NPC is
    Port ( npcaddr : in  STD_LOGIC_VECTOR (31 downto 0);
           nrst : in  STD_LOGIC;
           nclk : in  STD_LOGIC;
           npcout : out  STD_LOGIC_VECTOR (31 downto 0));
end NPC;

architecture Behavioral of NPC is

begin
proceso1:
	process(nclk,nrst)
	begin
	
		IF nrst = '1' THEN
			npcout <= (others => '0') ;   --pcout <= "00000000000000000000000000000000";
		ELSIF (rising_edge(nclk)) then   --clk'EVENT AND clk = '1' THEN
			npcout<= npcaddr;
			
		END IF;
	END PROCESS;


end Behavioral;

