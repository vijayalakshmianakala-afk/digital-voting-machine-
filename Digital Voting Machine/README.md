# Digital Voting Machine using Verilog

## Overview
This project implements a Digital Voting Machine (DVM) using Verilog HDL. It allows voters to cast votes for one of four candidates while ensuring only one vote is counted per voting session. The design is verified using a comprehensive testbench and simulated using ModelSim/EDA Playground.

## Features
- Four candidates
- One vote per session
- Vote enable control
- Reset functionality
- Individual vote counters
- Simulation and waveform verification

## Inputs
| Signal | Description |
|---------|-------------|
| clk | System Clock |
| reset | Reset all vote counts |
| vote_enable | Enables voting |
| candidate[1:0] | Candidate Selection |

## Outputs
| Signal | Description |
|---------|-------------|
| count0 | Votes for Candidate 0 |
| count1 | Votes for Candidate 1 |
| count2 | Votes for Candidate 2 |
| count3 | Votes for Candidate 3 |

## Candidate Encoding

00 → Candidate A

01 → Candidate B

10 → Candidate C

11 → Candidate D

## Tools Used

- Verilog HDL
- ModelSim
- Vivado
- GTKWave

## Simulation

The testbench simulates multiple voting scenarios including reset and voting for all candidates.
