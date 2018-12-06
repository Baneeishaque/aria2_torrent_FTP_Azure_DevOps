@Echo Off 

for /f "tokens=1* delims=\" %%A in (
  'forfiles /s /m *.torrent /c "cmd /c echo @relpath"'
) do for %%F in (^"%%B) do aria2c.exe --seed-time=0 --dir=aria2_torrent_ftp_vsts_repository %%~F

DIR /s aria2_torrent_ftp_vsts_repository 
:: Pause 