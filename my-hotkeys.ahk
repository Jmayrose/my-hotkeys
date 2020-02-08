;my-hotkeys.ahk
;
;

#NoTrayIcon
#SingleInstance force

;--------------------
;Application Hotkeys
;--------------------

;SHIFT+F4 Opens Spotify
+F4:: Run "%APPDATA%\Spotify\Spotify.exe"
return

;SHIFT+F5 Opens Slack
+F5:: Run "%APPDATA%\Local\slack\slack.exe"
return

;--------------------
;Media Hotkeys
;--------------------

^F1::Send {Volume_Mute}
^F2::SoundSet, -4
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

;--------------------
;Productivity Hotstrings
;--------------------

;lh hotstring
::lh::localhost
