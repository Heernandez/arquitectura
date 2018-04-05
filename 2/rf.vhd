
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity rf is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           dwr : in  STD_LOGIC_VECTOR (31 downto 0);
           crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : out  STD_LOGIC_VECTOR (31 downto 0));
end rf;

architecture Behavioral of rf is

type rom_type is array (0 to 63) of std_logic_vector (31 downto 0);
begin

	PROCESS (rs1,rs2,rd,dwr) -- Lista sensiliva
		BEGIN
			crs1 <= rom_type(rs1);
			crs2<= rom_type(rs2);
			rom_type(rd) <= dwr;
	END PROCESS;

end Behavioral;

