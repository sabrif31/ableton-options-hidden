@echo off
set /p ABLETON=< settings.txt
echo %CD%\Options.txt copy to %AppData%\Ableton\Live %ABLETON%\Preferences\Options.txt
copy "%CD%\Options.txt" "%AppData%\Ableton\Live %ABLETON%\Preferences\Options.txt"
%SystemRoot%\explorer.exe "%AppData%\Ableton\Live %ABLETON%\Preferences\"
#pause
exit
