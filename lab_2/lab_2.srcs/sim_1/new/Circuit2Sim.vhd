----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2023 10:57:52 AM
-- Design Name: 
-- Module Name: Circuit2Sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Circuit2Sim is
--  Port ( );
end Circuit2Sim;

architecture Behavioral of Circuit2Sim is
COMPONENT Circuit2
    PORT ( A,B,C :IN STD_LOGIC;
         G,Y,R :OUT STD_LOGIC);
END COMPONENT;
SIGNAL g0,g1,g2 :std_logic;
SIGNAL G_OUT,Y_OUT,R_OUT :std_logic;


begin
    UUT: Circuit2 PORT MAP(
    A=>g0,
    B=>g1,
    C=>g2,
    G=>G_OUT,
    Y=>Y_OUT,
    R=>R_OUT
);
    process
    begin
    g0 <= '0';
              --set initial values
              g1 <= '0';g2 <= '0';
              WAIT FOR 100 ns;    
              --after 100 ns change inputs
              g2 <= '1';WAIT FOR 100 ns; 
                 --change again
                 g1 <= '1';g2 <= '0';WAIT FOR 100 ns;
                    --change again
                    g2 <= '1';
                    WAIT FOR 100 ns;  
                     --change again
                     g0 <= '1';
                     g1 <= '0';
                     g2 <= '0';
                     WAIT FOR 100 ns;  
                      --change again
                      g2 <= '1';WAIT FOR 100 ns;  
                       --change again
                       g1 <= '1'
                       ;g2 <= '0';
                       WAIT FOR 100 ns;
                           --change again
                           g2 <= '1';WAIT;
                            --will wait forever
       end process;


end Behavioral;
