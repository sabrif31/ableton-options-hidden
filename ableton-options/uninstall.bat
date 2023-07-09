@echo off
:: set /p ABLETON=Enter Version ableton:
set /p ABLETON=< settings.txt

del "%AppData%\Ableton\Live %ABLETON%\Preferences\Options.txt" /f
echo Fichier supprimé %AppData%\Ableton\Live %ABLETON%\Preferences\Options.txt
#pause
exit
