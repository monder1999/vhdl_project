library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pro is
    Port ( 
	     clk: in std_logic; 
        reset: in std_logic;
        counter: out std_logic_vector(3 downto 0) 
         );
end pro;

architecture pro_arch of pro is
signal counter_up: std_logic_vector(3 downto 0) := "0000" ;
begin
process(clk  )
begin
if(rising_edge(clk)) then
    if(reset='1') then
         counter_up <= "0000";
    else
	     
        counter_up <= counter_up + "0001";
    end if;
	 
 end if;
end process;
 counter <= counter_up;

end pro_arch;

