library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_STD.all;

entity maquinaEstados is
  port(
   --Entradas
   temp_p,temp_h :  in  STD_LOGIC; 
	start,clk, reset: in  STD_LOGIC;
	tics_p: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	--Salidas
   test,sterilized,valid,alarm: out STD_LOGIC
  ); 
end entity maquinaEstados;

architecture arq_chemical_test of maquinaEstados is    
  --Posibles estados:
	type estados is (stand_by,w_bs,starting,str1,w1,str2,w2,str3,w3,alarma,testing,valido,sec_vez);
  
  --state management:
	signal state, next_state: estados; 
	
	--interacción con componentes:
	signal reset_cont_temph, reset_cont_25ciclos, reset_cont_ticsp, S_biestable, R_biestable, Q_biestable : std_logic;
	--señales de los componentes
	signal cont_temph : std_logic_vector(2 downto 0);
	signal cont_25ciclos : std_logic_vector(4 downto 0);
	signal cont_ticsp : std_logic_vector(15 downto 0);	
	
	--declaración y mapeado de los componentes
	component contadorMod6 is
	Port (clk : in STD_LOGIC;
			reset_sinc : in STD_LOGIC;
			count : out STD_LOGIC_VECTOR(2 downto 0));
	end component;
	
	component contadorMod32 is
	Port (clk : in STD_LOGIC;
			reset_sinc : in STD_LOGIC;
			count : out STD_LOGIC_VECTOR(4 downto 0));
	end component;
	
	component contador16bits is
	Port (clk : in STD_LOGIC;
			reset_sinc : in STD_LOGIC;
			count : out STD_LOGIC_VECTOR(15 downto 0));
	end component;
	
	component biestableSR is
	Port (R,S : in STD_LOGIC;
			Q : out STD_LOGIC);
	end component;
	
	begin	
		contador_temph: contadorMod6 port map(
			clk=>clk,
			reset_sinc=>reset_cont_temph,
			count=>cont_temph			
		);
		
		contador_25ciclos: contadorMod32 port map(
			clk=>clk,
			reset_sinc=>reset_cont_25ciclos,
			count=>cont_25ciclos
		);
		
		contador_ticsp: contador16bits port map(
			clk=>clk,
			reset_sinc=>reset_cont_ticsp,
			count=>cont_ticsp
		);
		
		biestable_2vez: biestableSR port map(
			R=>R_biestable,
			S=>S_biestable,
			Q=>Q_biestable
		);
		
		-- Situaciones en las que se cambia de estado
		transiciones: process(reset,clk,state,temp_p,temp_h,start,tics_p,Q_biestable,cont_temph,cont_25ciclos,cont_ticsp)
		begin
   	   next_state<=state;
			case state is
				when stand_by=>
					if start='1' then
						next_state<=w_bs;
					end if;
				when w_bs=>
					if start='0' then
						next_state<=starting;
					end if;
				when starting=>
					if temp_h='1' then
						next_state<=str1;
					end if;
				when str1=>
					if temp_h='0' then
						if cont_temph="101" then --no puede pasar de 5
							next_state<=w1;
						else
							next_state<=starting;
						end if;
					end if;
				when w1=>
					if temp_h='1' then
						next_state<=str2;
					elsif cont_25ciclos>="11001" then -- >=25
						next_state<=alarma;
					end if;
				when str2=>
					if temp_h='0' then
						if cont_temph="101" then --no puede pasar de 5
							next_state<=w2;
						else
							next_state<=w1;
						end if;
					end if;
				when w2=>
					if temp_h='1' then
						next_state<=str3;
					elsif cont_25ciclos>="11001" then -- >=25
						next_state<=alarma;
					end if;
				when str3=>
					if temp_h='0' then
						if cont_temph="101" then --no puede pasar de 5
							next_state<=w3;
						else
							next_state<=w2;
						end if;
					end if;
				when w3=>
					if temp_p='1' then
						next_state<=testing;
					end if;
				when alarma=>
					-- Esperamos reset
				when testing=>
					if cont_ticsp=tics_p then
						next_state<=valido;
					elsif temp_p='0' then
						if Q_biestable='0' then --1r intento
							next_state<=sec_vez;
						else --2o intento
							next_state<=alarma;
						end if;
					end if;
				when valido=>
					--El reset del sistema nos llevará a stand_by
				when sec_vez=>
					next_state<=starting;
			end case;
		end process transiciones;
	
		--Refresco de la situación de estado
		Registro_estado:process (clk,reset,next_state)       
  	   begin
			if reset='1' then
				state<=stand_by;
			elsif clk'event and clk='1' then
				state<=next_state;
			end if;
		end process Registro_estado;
	 
	 -- Mapeado de salidas
	 Salidas: process(state)
	begin
	--las salidas van a dejar contar al componente "contador" o no 
	-- basculando un "1" al reset del contador según la situación necesaria
	-- de las salidas
		case state is
			when stand_by=>
				sterilized <='0';
				valid <='0';
				test <='0';
				alarm <='0';				
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '1';
			when w_bs=>
				sterilized <='0';
				valid <='0';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when starting=>
				sterilized <='1';
				valid <='0';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when str1=>
				sterilized <='1';
				valid <='0';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '0';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when w1=>
				sterilized <='1';
				valid <='0';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '0';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when str2=>
				sterilized <='1';
				valid <='0';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '0';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when w2=>
				sterilized <='1';
				valid <='0';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '0';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when str3=>
				sterilized <='1';
				valid <='0';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '0';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when w3=>
				sterilized <='1';
				valid <='0';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when alarma=>
				sterilized <='0';
				valid <='0';
				test <='0';
				alarm <='1';
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when testing=>
				sterilized <='0';
				valid <='0';
				test <='1';
				alarm <='0';
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '0';
				S_biestable <= '0';
				R_biestable <= '0';
			when valido=>
				sterilized <='0';
				valid <='1';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '0';
				R_biestable <= '0';
			when sec_vez=>
				sterilized <='0';
				valid <='0';
				test <='0';
				alarm <='0';
				reset_cont_temph <= '1';
				reset_cont_25ciclos <= '1';
				reset_cont_ticsp <= '1';
				S_biestable <= '1';
				R_biestable <= '0';
		end case;
	end process Salidas;
end architecture arq_chemical_test;
