Library IEEE;
Use IEEE.std_logic_1164.all;

Entity besBitEslik is
  Port(Giris:in std_logic_vector(4 downto 0);
    Cikis:out std_logic_vector(5 downto 0));
  End Entity;

Architecture yapi of besBitEslik is
  signal eslik: std_logic;
  Begin
    
    eslik <= Giris(0) xor Giris(1) xor Giris(2) xor Giris(3) xor Giris(4);
    Cikis <= Giris & eslik;
    
  End yapi;
