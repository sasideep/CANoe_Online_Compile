rem @echo off
echo starting to export all .vtestreport to .xml for further processing...
pushd %~dp0
echo %~dp0..
echo "~~~~~~~~~~~~~~"
rem for %%A in ("%~dp0..\Reports\")   Do set "_Prg=%%~fA"
rem Echo "%_Prg%"
rem cd %_Prg%
forfiles /p:..\..
forfiles /p:..\Reports

forfiles /p:..\Reports /m:*.vtestreport /c "cmd /c ..\Script\XmlExportOne.bat @path"

rem forfiles /p:.. /m:*.vtestreport /c "cmd /c Script\XmlExportOne.bat @path"
popd

rem echo finished .vtestreport - xml export.
