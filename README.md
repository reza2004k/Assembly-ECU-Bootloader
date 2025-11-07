🚗 Assembly Language ECU Control Simulations
This repository contains three independent Assembly language programs, each simulating a key control loop found within a modern vehicle's Electronic Control Unit (ECU). These programs illustrate how low-level assembly code handles sensor data, performs comparisons, and executes control logic.

✨ Modules and Functionality
The project is structured into three distinct control modules:

1. ECU1.asm: RPM Control Simulation (Engine Management)
Function: Simulates logic for controlling engine parameters based on the current Engine RPM (Revolutions Per Minute).

Logic: Compares the current RPM value (ax) against a target value (bx = 100).

Control: Jumps to different control routines (HIGH_RPM or CONTROL_LOGIC) to adjust simulated parameters (e.g., fuel injection timing or throttle) based on whether the RPM is above or below the setpoint.

2. ECU2.asm: Temperature Sensor Simulation (Cooling Fan Control)
Function: Simulates the logic for controlling a Cooling Fan based on a temperature reading.

Logic: Compares a simulated temperature reading (al) against a threshold (0x50 / 80 decimal).

Control: Jumps to FAN_ON if the temperature is too high, setting the output register (bl) accordingly, mimicking a real-world thermostat and cooling system.

3. ECU3.asm: Vehicle Speed Control Simulation (Cruise Control)
Function: Simulates the fundamental logic of a Cruise Control System to maintain a target vehicle speed.

Logic: Compares the current speed (al) against a target speed (0x50 / 80 km/h).

Control: The loop adjusts the speed (inc al or dec al) to attempt to reach and maintain the target speed, simulating throttle control.

🛠️ Technologies Used
Language: Assembly Language (Syntax is generally compatible with x86 architecture, common in embedded systems simulations).

Environment: Designed to be run and tested within a low-level Assembly IDE or Emulator (e.g., TASM, MASM, or an educational emulator).

Concepts: Register manipulation, conditional jumps (cmp, jg), and control flow loops.

🚀 Getting Started
To execute these simulations, you need a suitable environment that can interpret and run Assembly code.

Prerequisites
A compatible Assembly Language IDE or Emulator (recommended for ease of testing).

Installation and Running
Clone the repository:

Bash

git clone https://github.com/YOUR_USERNAME/Assembly-ECU-Control-Simulations.git
cd Assembly-ECU-Control-Simulations
Load and Assemble:

Open your chosen Assembly IDE/Emulator.

Load one of the .asm files (e.g., ECU1.asm).

Assemble the code to check for syntax errors.

Execute/Step Through:

Run the assembled code to observe the register values changing as the control loops execute (e.g., watch the ax register change in ECU1.asm).

Alternatively, step through the code line-by-line to clearly observe the jump logic (jg) and register manipulation.
