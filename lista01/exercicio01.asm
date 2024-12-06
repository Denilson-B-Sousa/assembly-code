;[0x0] valor em minutos
;[0x4] valor em dias
;[0x8] valor em horas
;[0xB] valor em minutos
;[0xF] valor em segundos

; eax acumulador Geral
; edx auxiliar para divisões

push eax ; colocar o valor de eax na pilha
push edx ; colocar o valor de edx na pilha

; carregar o valor em minutos
mov eax, [0x0] 

; calcular dias (1440 min p/ dia)
mov edx, 0
mov ecx, 1440
div ecx ; eax = eax / ecx [0x0] / 1440 edx = resto
mov [0x4], eax;
mov eax, edx ; eax = resto

; calcular horas
mov edx, 0
mov ecx, 60
div ecx ; eax = eax / ecx resto / 60
mov [0x8], eax ; valor em horas carregado em [0x8]
mov eax, edx

mov [0xB], eax ; minutos restantes

; calcular segundos
mov ecx, 60
mul ecx ; eax = eax / ecx
mov [0xF], eax

pop edx
pop eax
