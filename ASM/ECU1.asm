; Simple RPM Control Simulation in Assembly
.org 0x1000      ; Start the program at memory location 0x1000
START:
    ; Initialize registers and variables
    mov ax, 0x0  ; Reset the RPM counter
    mov bx, 100  ; Set initial RPM value to 100

MAIN_LOOP:
    cmp ax, bx    ; Compare current RPM with set value
    jg HIGH_RPM   ; Jump to HIGH_RPM if RPM > 100

    ; Low RPM condition
    mov cx, 0x50  ; Control logic for low RPM
    call CONTROL_LOGIC
    jmp MAIN_LOOP

HIGH_RPM:
    mov cx, 0x80  ; Control logic for high RPM
    call CONTROL_LOGIC
    jmp MAIN_LOOP

CONTROL_LOGIC:
    ; Simulated logic to control engine parameters
    ; In a real ECU, this would interact with sensors and actuators
    ret
