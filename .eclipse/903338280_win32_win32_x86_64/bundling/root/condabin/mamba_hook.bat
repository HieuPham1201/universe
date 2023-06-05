@REM Copyright (C) 2021 QuantStack
@REM SPDX-License-Identifier: BSD-3-Clause
@REM This file is derived from conda_hook.bat

@IF DEFINED CONDA_SHLVL GOTO :EOF

@FOR %%F in ("%~dp0") do @SET "__mambabin_dir=%%~dpF"
@SET "__mambabin_dir=%__mambabin_dir:~0,-1%"
@SET "PATH=%__mambabin_dir%;%PATH%"
@SET "MAMBA_BAT=%__mambabin_dir%\micromamba.bat"
@FOR %%F in ("%__mambabin_dir%") do @SET "__mamba_root=%%~dpF"
@SET "MAMBA_EXE=C:\Users\HP\.eclipse\903338280_win32_win32_x86_64\plugins\org.knime.pythonscripting.channel.v1.bin.win32.x86_64_4.7.1.v202301201518\bin\micromamba.exe"
@SET __mambabin_dir=
@SET __mamba_root=

@DOSKEY micromamba="%MAMBA_BAT%" $*

@SET CONDA_SHLVL=0
