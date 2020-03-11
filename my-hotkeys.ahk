;My Hotkeys
;##########

#NoTrayIcon
#SingleInstance force

;----------
;Hotstrings
;----------

::lh::localhost

;--------------------
;Application Hotkeys
;--------------------

;SHIFT+F4 Opens Spotify
+F4:: Try Run "%APPDATA%\Spotify\Spotify.exe"
return

;SHIFT+F5 Opens Slack
+F5:: Try Run "%USERPROFILE%\AppData\Local\slack\slack.exe"
return

;SHIFT+F6 Opens MongoDB Compass
+F6:: Try Run "C:\Program Files\MongoDB Compass\MongoDBCompass.exe"
return

;SHIFT+F7 Opens Postman
+F7:: Try Run "%USERPROFILE%\AppData\Local\Postman\Postman.exe"
return

;--------------------
;Media Hotkeys
;--------------------

;CTRL+F1 System audio mute toggle
^F1::Send {Volume_Mute}
;CTRL+F2 decrease sound by 4 points
^F2::SoundSet, -4
;CTRL+F3 increase sound by 4 points
^F3::SoundSet, +4

;SHIFT+F1 rewinds current track
+F1:: Send {Media_Prev}
return

;SHIFT+F2 Play/Pause Toggle
+F2:: Send {Media_Play_Pause}
return

;SHIFT+F3 Skips to next track
+F3:: Send {Media_Next}
return

;--------------------
;Productivity Hotkeys
;--------------------

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
