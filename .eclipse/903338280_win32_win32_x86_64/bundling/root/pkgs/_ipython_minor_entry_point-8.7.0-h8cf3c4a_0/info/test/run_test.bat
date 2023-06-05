



pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
which ipython3.9
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
