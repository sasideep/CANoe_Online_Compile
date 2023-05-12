rem @echo off
echo starting to export all .vtestreport to .xml for further processing...

forfiles /p:"D:\Orientation\CentralLockingSystem\CANoe_Configuration\Reports" /m:*.vtestreport /c "cmd /c %~dp0XmlExportOne.bat @path"

echo finished .vtestreport - xml export.
