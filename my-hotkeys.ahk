;My Hotkeys
;##########

#NoTrayIcon
#SingleInstance force

;--------------------
;Media Hotkeys
;--------------------

;SHIFT+F1 rewinds current track
+F1:: Send {Media_Prev}
return

;SHIFT+F2 Play/Pause Toggle
+F2:: Send {Media_Play_Pause}
return

;SHIFT+F3 Skips to next track
+F3:: Send {Media_Next}
return

;SHIFT+F4 Spotify
+F4:: Try Run "%APPDATA%\Spotify\Spotify.exe"
return

;--------------------
;Communication Hotkeys
;--------------------

;SHIFT+F5 Outlook
+F5:: Try Run "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
return

;SHIFT+F6 Slack
+F6:: Try Run "%USERPROFILE%\AppData\Local\slack\slack.exe"
return

;SHIFT+F7 Teams
+F7:: Try Run "%USERPROFILE%\AppData\Local\Microsoft\Teams\current\Teams.exe"
return

;SHIFT+F8 Discord
+F8:: Try Run "%UPSERPROFILE%\AppData\Local\Discord\Update.exe --processStart Discord.exe"
return

;--------------------
;Application Hotkeys
;--------------------

;SHIFT+F9 MongoDB Compass
+F9:: Try Run "%USERPROFILE%\AppData\Local\MongoDBCompass\MongoDBCompass.exe"
return

;SHIFT+F10 Postman
+F10:: Try Run "%USERPROFILE%\AppData\Local\Postman\Postman.exe"
return

;SHIFT+F11 GitKraken
+F11:: Try Run "C:\Users\josep\AppData\Local\gitkraken\app-6.5.4\gitkraken.exe" ;TODO Change to always run most updated version 
return

;SHIFT+F12 VS Code
+F12:: Try Run "%USERPROFILE%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
return

;--------------------
;Productivity Hotkeys
;--------------------

::lh::localhost

;CTRL+F1 System audio mute toggle
^F1::Send {Volume_Mute}
;CTRL+F2 decrease sound by 4 points
^F2::SoundSet, -4
;CTRL+F3 increase sound by 4 points
^F3::SoundSet, +4

;CTRL+ALT+A keeps active window on top
^!A:: Winset, Alwaysontop, ,A 
return

;CTRL+L writes 32 characters of Lorem Ipsum text
^L:: Send, % loremIpsum()
return

loremIpsum(){
Source := "Vivamus placerat nisi in erat laoreet ac placerat tortor sollicitudin Donec urna velit lacinia sit amet auctor vel placerat ut ipsum Vestibulum nulla urna sodales vel maximus in posuere non eros Proin venenatis nisl magna eget placerat magna amet" 
Random, start, 0, 256
leString := SubStr(Source, start, 32)
return leString 
}
