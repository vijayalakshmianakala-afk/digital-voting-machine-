module digital_voting_machine(
    input clk,
    input reset,
    input vote_enable,
    input [1:0] candidate,
    output reg [7:0] count0,
    output reg [7:0] count1,
    output reg [7:0] count2,
    output reg [7:0] count3
);

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        count0 <= 0;
        count1 <= 0;
        count2 <= 0;
        count3 <= 0;
    end
    else if(vote_enable)
    begin
        case(candidate)
            2'b00: count0 <= count0 + 1;
            2'b01: count1 <= count1 + 1;
            2'b10: count2 <= count2 + 1;
            2'b11: count3 <= count3 + 1;
        endcase
    end
end

endmodule