library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity contador16bits is
	Port (	clk : in STD_LOGIC;
			reset_sinc : in STD_LOGIC;
			count : out STD_LOGIC_VECTOR(15 downto 0));
end contador16bits;

architecture Behavioral of contador16bits is
signal count_int : STD_LOGIC_VECTOR(15 downto 0);
begin
	process(reset_sinc,clk)
	begin
		if clk'event and clk='1' then
			if reset_sinc='1' then
				count_int<=(others=>'0');
			else
				count_int<= count_int+1;
			end if;
		end if;
	end process;
	count<=count_int;
end Behavioral;