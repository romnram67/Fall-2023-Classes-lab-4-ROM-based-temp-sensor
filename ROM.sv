module  ROM_logic
(
    input  logic       clk,
    input  logic [7:0] temp,
    input              C_F,
    output logic [7:0] out
);
logic [7:0] conv_to_F;
logic [7:0] conv_to_C;

    (*rom_style = "block" *) logic [7:0] rom [0:255];       //0:255 cause there 2** 8 is 256. 2**8 is the number of inputs (input logic [7:0] temp)
    (*rom_style = "block" *) logic [7:0] rom2 [0:255];
    initial begin
        $readmemb("temperature.mem", rom);                  //takes from C mem and outputs temp is C to F
        $readmemb("temp_F.mem",rom2);                   //takes line from F mem and outputs temp_f is F to C
end

    always_ff @(posedge clk) begin
         conv_to_F <= rom[temp];
         conv_to_C <= rom2[temp];
         end
    assign out = (C_F) ? conv_to_C : conv_to_F;


endmodule