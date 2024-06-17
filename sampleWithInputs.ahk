; Este script abre WhatsApp, solicita entradas de usuario y envía un mensaje.

; Solicita el nombre del contacto
InputBox, contacto, Nombre del Contacto, Introduce el nombre del contacto:
if (ErrorLevel) {
    MsgBox, Has cancelado la operación.
    ExitApp
}

; Solicita el mensaje a enviar
InputBox, message, Mensaje, Introduce el mensaje a enviar:
if (ErrorLevel) {
    MsgBox, Has cancelado la operación.
    ExitApp
}

; Abre WhatsApp
Run, whatsapp:
Sleep, 5000 

; Asegura que la ventana de WhatsApp esté activa
SetTitleMatchMode, 2
WinWaitActive, WhatsApp

; Busca el contacto
Send, ^f
Sleep, 2500
Send, %contacto%
Sleep, 1000
Click 207, 191
Sleep, 3000

; Asegura que el foco esté en el campo de entrada del mensaje
; Depende del tamaño de la ventana
Click 700, 702 

; Envía el mensaje
Sleep, 1000
SendRaw, %message%
Send, {Enter}
