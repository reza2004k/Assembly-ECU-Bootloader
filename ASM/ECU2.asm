; Temperature Sensor Simulation (Cooling Fan Control)
.org 0x2000        ; Start the program at memory location 0x2000
START:
    ; Simulate temperature reading (value between 0-255)
    mov al, 0x30    ; Set initial temperature to 48 (out of 255 scale)

MAIN_LOOP:
    cmp al, 0x50    ; Check if temperature exceeds threshold (80 in decimal)
    jg FAN_ON       ; If greater than 80, turn on the fan

    ; Cooling Fan Off Logic (Temperature <= 80)
    mov bl, 0       ; Fan off
    jmp MAIN_LOOP

FAN_ON:
    mov bl, 1       ; Fan on
    jmp MAIN_LOOP
