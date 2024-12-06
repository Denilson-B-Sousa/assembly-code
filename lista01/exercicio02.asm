; valor x [0x0]
; valor y [0x4]
; resultado [0x8]

push eax
push edx

; inicializar o valor de x e y a partir da memória
mov eax, [0x0] ; Carregar x em eax
mov ecx, [0x4] ; Carregar y em ecx

mov ebx, eax ; move valor de eax para ebx
dec ecx  ; Subtrai 1 de y

; Verifica se Y é 0
cmp ecx, 0
je fim

for:
   mul ebx ; eax = eax * ebx
   dec ecx ; decrementa Y
   cmp ecx, 0 ; verifica se Y chegou a 0
   jg for

;Armazenando resultado final   
mov [0x8], eax


fim:
mov dword [0x8], 1

pop edx
pop eax
