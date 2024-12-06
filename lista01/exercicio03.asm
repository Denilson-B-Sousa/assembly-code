; [0x0] quantidade de horas
; [0x4] valor total

mov eax, [0x0]

mov ebx, 3
xor edx, edx 
div ebx ; eax = eax / ebx

mov ecx, 12
mul ecx

mov ebx, eax

mov eax, edx
mov ecx, 5
mul ecx
