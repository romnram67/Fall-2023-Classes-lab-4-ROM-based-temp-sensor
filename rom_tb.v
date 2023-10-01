`timescale 1ns / 1ps
module rom_tb();
logic       clk;
logic [7:0] temp;
logic       C_F;
logic [7:0] out;

ROM_logic dut(.*);

always begin
    clk = 1'b1;
    #20;
    clk = 1'b0;
    #20;
end

always begin
    temp = 8'b0000_1100;
    C_F  = 1'b1;
    
    #20;
    
    temp = 8'b1100_1100;
    C_F = 1'b1;
    
    
    #20;
    temp = 8'b0001_1100;
    C_F  = 1'b1;
    
    #20;
    
    temp = 8'b0011_1100;
    C_F = 1'b1;
    
    
    #20;
    temp = 8'b0010_1110;
    C_F  = 1'b1;
    
    #20;
    
    temp = 8'b0000_1111;
    C_F = 1'b1;
    
    
    #20;
    
    temp = 8'b0000_1110;
    C_F = 1'b0;
    
    #20;
    
    temp = 8'b0011_1101;
    C_F = 1'b0;
    #20;
    temp = 8'b0000_1110;
    C_F = 1'b0;
    
    #20;
    
    temp = 8'b0010_0001;
    C_F = 1'b0;
    #20;

end
endmodule
