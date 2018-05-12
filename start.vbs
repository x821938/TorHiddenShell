Dim oFSO
Set oFSO = CreateObject("Scripting.FileSystemObject")
scriptDir = oFSO.GetParentFolderName(WScript.ScriptFullName)

Set objShell = CreateObject("Wscript.Shell")
objShell.CurrentDirectory = scriptDir
objShell.run "bin\tor.exe -f torrc", 0
objShell.run "telnetsrv.exe 4444", 0
