# Verification for Priority Encoder

## Project Overview
This GitHub project provides a comprehensive verification environment for a priority encoder module written in SystemVerilog. The priority encoder is a crucial component in digital systems, responsible for encoding multiple inputs into a binary representation corresponding to the highest priority active input.

## Project Components
1. **Priority Encoder Module (`priority_encoder.sv`):**
   - Implements the functionality of the priority encoder.
   - Features an `always_comb` block to continuously monitor input signals and update the output accordingly.

2. **Transaction Class (`transaction.sv`):**
   - Defines a transaction class representing data and control signals for communication between different components of the verification environment.

3. **Generator Class (`generator.sv`):**
   - Generates random transactions and pushes them into a mailbox for consumption by the driver.

4. **Driver Class (`driver.sv`):**
   - Drives the input transactions to the priority encoder module.
   - Utilizes a virtual interface to connect to the priority encoder.

5. **Monitor Class (`monitor.sv`):**
   - Observes the behavior of the priority encoder by sampling its input and output signals.
   - Pushes observed transactions into a mailbox for consumption by the scoreboard.

6. **Scoreboard Class (`scoreboard.sv`):**
   - Compares expected behavior with observed behavior to verify correctness.
   - Displays the results of the comparison.

7. **Environment Class (`environment.sv`):**
   - Orchestrates the entire verification environment by instantiating the generator, driver, monitor, and scoreboard.
   - Sets up connections between the components and controls the test flow.

8. **Testbench Module (`pe_tb.sv`):**
   - Top-level module instantiating the priority encoder module and the verification environment.
   - Initiates the verification process by configuring the environment and executing tests.


