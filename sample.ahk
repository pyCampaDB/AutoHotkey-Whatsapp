; contact0 y mensaje
contact := "Nombre del contacto en tu lista de Whatsapp"
message := "El mensaje que tú quieras. P. ej.: Hala Madrid!!"

; Abre WhatsApp
Run, whatsapp:
Sleep, 1000 

; Busca el contacto
Send, ^f
Sleep, 2500
Send, %contact%
Sleep, 1000
;Click en el primer contacto que aparezca con el nombre
;Ajustar según el tamaño de la pantalla
Click 207, 191

; Espera a que se abra el chat
Sleep, 2000

;Poner el foco en la entrada del mensaje
Click 700, 702 ; 

; Envía el mensaje
Sleep, 1000
SendRaw, %message%
Send, {Enter}
