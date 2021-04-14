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
;CTRL+F1 System audio mute toggle
^F1::Send {Volume_Mute}

;SHIFT+F2 Play/Pause Toggle
+F2:: Send {Media_Play_Pause}
return
;CTRL+F2 decrease sound by 4 points
^F2::SoundSet, -4

;SHIFT+F3 Skips to next track
+F3:: Send {Media_Next}
return
;CTRL+F3 increase sound by 4 points
^F3::SoundSet, +4

;--------------------
;Application Hotkeys
;--------------------

;SHIFT+F4 Spotify
+F4:: Try Run "%APPDATA%\Spotify\Spotify.exe"
return

;SHIFT+F5 
;+F5:: 
;return

;CTRL+F5 Docker Desktop
^F5:: Try Run "C:\Program Files\Docker\Docker\Docker Desktop.exe"
return

;SHIFT+F6 Slack
+F6:: Try Run "%USERPROFILE%\AppData\Local\slack\slack.exe"
return
;CTRL+F6 Global Protect
^F6:: Try Run "C:\Program Files\Palo Alto Networks\GlobalProtect\PanGPA.exe"
return

;SHIFT+F7 Teams
+F7:: Try Run "%USERPROFILE%\AppData\Local\Microsoft\Teams\current\Teams.exe"
return
;CTRL+F7 NordVPN
^F7:: Try Run "C:\Program Files\NordVPN\NordVPN.exe"
return

;SHIFT+F8 Discord
+F8:: Try Run "%USERPROFILE%\AppData\Local\Discord\app-0.0.309\Discord.exe"
return

;SHIFT+F9 MongoDB Compass
+F9:: Try Run "%USERPROFILE%\AppData\Local\MongoDBCompass\MongoDBCompass.exe"
return

;SHIFT+F10 Postman
+F10:: Try Run "%USERPROFILE%\AppData\Local\Postman\Postman.exe"
return

;SHIFT+F11 GitHub Desktop
+F11:: Try Run "%USERPROFILE%\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
return

;SHIFT+F12 VS Code
+F12:: Try Run "%USERPROFILE%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
return

;--------------------
;Workday Master Hotkey
;--------------------

+^F1:: 
Try Run "%APPDATA%\Spotify\Spotify.exe"
Try Run "%USERPROFILE%\AppData\Local\Microsoft\Teams\current\Teams.exe"
Try Run "%USERPROFILE%\AppData\Local\slack\slack.exe"
Try Run "%USERPROFILE%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
Try Run "%USERPROFILE%\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
Try Run "C:\Program Files\Docker\Docker\Docker Desktop.exe"
return

;--------------------
;Productivity Hotkeys
;--------------------

::lh::localhost
::lh3::localhost:3000

::flase::false

;CTRL+ALT+A keeps active window on top
^!A:: Winset, Alwaysontop, ,A 
return

;CTRL+L writes 32 characters of Lorem Ipsum text
^L:: Send, % loremIpsum()
return

loremIpsum(){
Source := "dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sem nulla pharetra diam sit amet nisl. Mattis vulputate enim nulla aliquet porttitor lacus luctus. Id diam vel quam elementum pulvinar etiam non quam lacus. Iaculis at erat pellentesque adipiscing commodo elit. Ornare massa eget egestas purus viverra. Justo laoreet sit amet cursus sit amet dictum. Aliquam nulla facilisi cras fermentum odio eu feugiat pretium nibh. Dictumst vestibulum rhoncus est pellentesque elit. Augue eget arcu dictum varius. Viverra suspendisse potenti nullam ac tortor. Mauris augue neque gravida in fermentum et. Enim facilisis gravida neque convallis a cras semper auctor neque. Viverra adipiscing at in tellus integer feugiat scelerisque varius. Sit amet venenatis urna cursus eget nunc scelerisque. Dignissim convallis aenean et tortor at risus viverra adipiscing at." 
Random, start, 0, 256
leString := "Lorem Ipsum, " . SubStr(Source, start, 32)
return leString 
}
