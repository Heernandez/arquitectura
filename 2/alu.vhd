----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:57 04/05/2018 
-- Design Name: 
-- Module Name:    alu - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           c : out  STD_LOGIC_VECTOR (31 downto 0));
end alu;

architecture Behavioral of alu is

signal k : std_logic_vector(31 downto 0) := (others => '0');
begin
PROCESS (a,b,aluop) -- Lista sensiliva
		BEGIN
			CASE aluop IS
				WHEN "000001" =>    c <= a and b; --add
				WHEN "000101" =>    c <= not(a and b); --addn
				WHEN "000010" =>    c <= a or b; --or
				WHEN "000110" =>    c <= not (a or b); --orn
				WHEN "000011" =>    c <= a xor b; --xor
				WHEN "010111" =>    c <= not(a xor b); --xnor
				WHEN "000000" =>    c <= a + b ; --ad
				WHEN "000100" =>    c <= a - b; --sub
				WHEN  OTHERS  =>    c <= k;
			
			END CASE;
END PROCESS;
end Behavioral;

