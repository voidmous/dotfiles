rem 创建快捷方式文件夹并添加到系统PATH
@echo off
setlocal EnableDelayedExpansion

rem "设置快捷方式文件夹"
set "shortCutsDir=D:\ShortCuts"
if exist %shortCutsDir% goto DIREXISTS
echo "文件夹不存在，创建 %shortCutsDir%"
mkdir %shortCutsDir%
if not exist %shortCutsDir% goto ERROR
echo "文件夹创建成功，准备添加到PATH"
goto ADDPATH

:DIREXISTS
echo "文件夹已存在，准备添加到PATH"
goto ADDPATH

:ADDPATH
rem "查看%shortCutsDir%是否已在系统路径中，不包含则添加"
if "!path:%shortCutsDir%=!" equ "%path%" (
	echo "PATH中不包含此文件夹，准备添加"
	setx PATH "%PATH%;%shortCutsDir%"
	if not "!path:%shortCutsDir%=!" equ "%path%" (
		echo "添加文件夹到PATH成功"
		goto END
		)
	echo "添加文件夹到PATH失败"
	goto ERROR
)
echo "PATH中已经包含此文件夹"
goto END

:ERROR
echo "发生错误，请检查"
goto END

:END
pause
