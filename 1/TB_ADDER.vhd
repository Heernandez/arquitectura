
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY TB_ADDER IS
END TB_ADDER;
 
ARCHITECTURE behavior OF TB_ADDER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADDER
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         b : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(31 downto 0) := (others => '0');
   
	-- Outputs
	signal b : std_logic_vector(31 downto 0) := (others => '0');
   

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADDER PORT MAP (
          a => a,
          b => b
        );

 

   stim_proc: process
   begin		
      
		a <= "00101010101010101010101010101010";
      wait for 100 ns;	
		a <= "00101010101010101010101011110010";
      wait for 100 ns;	
		a <= "00101010101000000000001010101010";
      wait for 100 ns;	



      wait;
   end process;

END;
