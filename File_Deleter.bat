@echo off
color 24
echo Welcome to Old files deleter
echo Location of files
set /p "location=>>"
cls
echo Extension [ex:- for image *.jpeg]
set /p "ext=>>"
cls
echo Older than in days
set /p "days=>>"
cls
forfiles /p %location% /s /m %ext% /d -%days% /c "cmd /c del @path"
cls
echo All files in directory %location% with extension %ext% older than %days% days were deleted succesfully
pause
exit