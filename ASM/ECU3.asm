; Vehicle Speed Control Simulation (Cruise Control)
.org 0x3000        ; Start the program at memory location 0x3000
START:
    ; Initialize vehicle speed (in km/h)
    mov al, 0x40    ; Set initial speed to 64 km/h

MAIN_LOOP:
    cmp al, 0x50    ; Check if speed exceeds the target speed (80 km/h)
    jg DECREASE_SPEED   ; If speed is greater than 80, decrease throttle

    ; Increase speed (throttle up)
    inc al
    jmp MAIN_LOOP

DECREASE_SPEED:
    dec al          ; Decrease speed (throttle down)
    jmp MAIN_LOOP
