mov eax, 1
mov edx, 0
mov ecx, [0x4]

loop: cmp ecx, 0
   je end_loop
   mul [0x0]
   dec ecx
   jmp loop

end_loop:
mov [0x8], eax