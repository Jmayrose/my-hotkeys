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
