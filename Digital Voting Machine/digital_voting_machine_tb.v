`timescale 1ns/1ps

module digital_voting_machine_tb;

reg clk;
reg reset;
reg vote_enable;
reg [1:0] candidate;

wire [7:0] count0;
wire [7:0] count1;
wire [7:0] count2;
wire [7:0] count3;

digital_voting_machine DUT(
    .clk(clk),
    .reset(reset),
    .vote_enable(vote_enable),
    .candidate(candidate),
    .count0(count0),
    .count1(count1),
    .count2(count2),
    .count3(count3)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    vote_enable = 0;
    candidate = 2'b00;

    #10 reset = 0;

    // Candidate A
    vote_enable = 1;
    candidate = 2'b00;
    #10;

    // Candidate B
    candidate = 2'b01;
    #10;

    // Candidate C
    candidate = 2'b10;
    #10;

    // Candidate D
    candidate = 2'b11;
    #10;

    // Candidate A again
    candidate = 2'b00;
    #10;

    vote_enable = 0;

    #20;

    $display("----------------------------");
    $display("Candidate A = %d",count0);
    $display("Candidate B = %d",count1);
    $display("Candidate C = %d",count2);
    $display("Candidate D = %d",count3);
    $display("----------------------------");

    $finish;
end

endmodule