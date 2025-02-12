library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity biestableSR is
	Port (R,S : in STD_LOGIC;
			Q : out STD_LOGIC);
end biestableSR;

architecture Behavioral of biestableSR is
begin
	process(S,R)
	begin
		if R='1' then
			Q<='0';
		elsif S='1' then
			Q<='1';
		end if;
	end process;
end Behavioral;