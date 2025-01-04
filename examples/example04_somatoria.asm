
; Somatório dos N primeiros 
; números inteiros
mov eax, [0x0]
mov ebx, 0 ; inicializa somatória
mov ecx, 0 ; inicializa contador

loop: cmp ecx, eax
  ja end_loop
  add ebx, ecx
  inc ecx
  mov [0x4], ebx 
  jmp loop
end_loop: