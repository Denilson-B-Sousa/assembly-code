mov eax, [0x0]
mov ebx, 1440 ; 1 dia em minutos
div ebx
mov [0x4], eax

mov eax, edx
mov ebx, 60
div ebx
mov [0x8], eax
mov [0xC], edx

mov eax, edx
mov ebx, 60
div ebx
mov [0xF], eax






