`include "FSM.v"
module fsm_tb();
reg clock, coinInserted;
reg [3:0] money;
reg returnMoney;
wire [3:0] coinReturn;
wire dispense;
initial begin
clock = 0;
coinInserted = 1'b0;
money = 4'b0000;
returnMoney = 1'b0;
#10 coinInserted = 1'b1;
#10 money = 4'b0100;
#10 returnMoney = 1'b1;
#10 money = 4'b0000;
end
always
#2 clock =~ clock;
fsm U_fsm(clock, coinInserted, money, returnMoney, coinReturn, dispense);
endmodule