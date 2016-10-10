@ECHO OFF

REM verifico se ho un parametro in ingresso
IF "%~1"=="" GOTO NoParam

xcopy /r /d /i /s /y /exclude:exclude.txt . %1
GOTO EndScript


:NoParam
ECHO "Occorre inserire il percorso di destinazione"

:EndScript
