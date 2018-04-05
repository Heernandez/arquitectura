
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_NPC IS
END TB_NPC;
 
ARCHITECTURE behavior OF TB_NPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NPC
    PORT(
         npcaddr : IN  std_logic_vector(31 downto 0);
         nrst : IN  std_logic;
         nclk : IN  std_logic;
         npcout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal npcaddr : std_logic_vector(31 downto 0) := (others => '0');
   signal nrst : std_logic := '0';
   signal nclk : std_logic := '0';

 	--Outputs
   signal npcout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant nclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NPC PORT MAP (
          npcaddr => npcaddr,
          nrst => nrst,
          nclk => nclk,
          npcout => npcout
        );

   -- Clock process definitions
   nclk_process :process
   begin
		nclk <= '0';
		wait for nclk_period/2;
		nclk <= '1';
		wait for nclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		rst <= '1';
      wait for 100 ns;	
		pcaddr <= "00000000000000000001010101010101";
		rst <= '0';
		wait for 100 ns;	
		pcaddr <= "00000000000000000000010101010101";
		rst <= '0';
		wait for 100 ns;	
		pcaddr <= "00000000000000000010010101010101";
		rst <= '0';
      
   end process;

END;
