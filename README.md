# VHDL Race Condition Example

This repository demonstrates a subtle race condition that can occur in VHDL code. The provided VHDL code implements a simple register, but due to timing issues, the output might not always reflect the latest input value.

## Problem Description

The `my_entity` VHDL code is intended to register and output an 8-bit input value.  However, if the input (`data_in`) changes very near to the rising edge of the clock, the output (`data_out`) might momentarily display an incorrect value. This is a race condition between the data update and the output assignment within the same clock cycle.

## Solution

The solution involves using a more robust register implementation that avoids the race condition.  Different strategies can be used, such as pipelining or adding intermediate signals with appropriate clock edge sensitivities.