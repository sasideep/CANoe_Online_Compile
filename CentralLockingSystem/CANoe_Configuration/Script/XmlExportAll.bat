rem @echo off
echo starting to export all .vtestreport to .xml for further processing...
pushd %~dp0
forfiles /p:..\Reports /m:*.vtestreport /c "cmd /c ..\Script\XmlExportOne.bat @path"
popd
rem echo finished .vtestreport - xml export.
