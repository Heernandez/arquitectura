
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY PC_TB IS
END PC_TB;
 
ARCHITECTURE behavior OF PC_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         pcaddr : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         pcout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pcaddr : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal pcout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          pcaddr => pcaddr,
          rst => rst,
          clk => clk,
          pcout => pcout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
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
      
      wait;
   end process;

END;
