
# Ableton live - Hidden Options

## Automatic installation

[Download ZIP](https://github.com/sabrif31/ableton-options-hidden/archive/refs/heads/main.zip)
- Ouvrez le fichier **settings.txt**, puis éditer la version d'Ableton si besoin.
- Exécuter le fichier **install.bat** *(mode administrateur peut être requis)*

## Manual installation

### Install
- Créer un dossier **ableton-options**
- Télécharger le fichier [Options.txt](https://drive.google.com/file/d/1EWl9ebby4MVWqoZlHyIJ1JeA3FEzneaz/view) 
- [SCL youtube vidéo](https://www.youtube.com/watch?v=IL19EsckJc8)
- Copier le fichier **Options.txt** dans ce dossier
- Créer un fichier texte dans ce même dossier que vous nommez **settings.txt**, dans celui ci, taper la version de votre Ableton Live, par exemple: **11.3.4**, puis enregistrez le fichier
- Créer un fichier que vous nommez **install.bat**, ensuite il faut l'ouvrir avec le bloc note et y insérer:

```
@echo off
set /p ABLETON=< settings.txt

echo %CD%\Options.txt copy to %AppData%\Ableton\Live %ABLETON%\Preferences\Options.txt
copy "%CD%\Options.txt" "%AppData%\Ableton\Live %ABLETON%\Preferences\Options.txt"
%SystemRoot%\explorer.exe "%AppData%\Ableton\Live %ABLETON%\Preferences\"
#pause
exit
```

- Enregistrez le fichier
- Il vous reste juste à exécuter ce fichier, et l'Options.txt sera copier au bonne endroit. *(mode administrateur peut être requis)*

### Uninstall

- Créer un fichier **uninstall.bat** que l'on va éditer avec le bloc-note pour y insérer ce qui suit. 

```
@echo off
set /p ABLETON=< settings.txt

del "%AppData%\Ableton\Live %ABLETON%\Preferences\Options.txt" /f
echo Fichier supprimé %AppData%\Ableton\Live %ABLETON%\Preferences\Options.txt
#pause
exit
```
**Cela va tout simplement supprimer le fichier Options.txt**
