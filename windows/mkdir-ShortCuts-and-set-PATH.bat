rem ������ݷ�ʽ�ļ��в���ӵ�ϵͳPATH
@echo off
setlocal EnableDelayedExpansion

rem "���ÿ�ݷ�ʽ�ļ���"
set "shortCutsDir=D:\ShortCuts"
if exist %shortCutsDir% goto DIREXISTS
echo "�ļ��в����ڣ����� %shortCutsDir%"
mkdir %shortCutsDir%
if not exist %shortCutsDir% goto ERROR
echo "�ļ��д����ɹ���׼����ӵ�PATH"
goto ADDPATH

:DIREXISTS
echo "�ļ����Ѵ��ڣ�׼����ӵ�PATH"
goto ADDPATH

:ADDPATH
rem "�鿴%shortCutsDir%�Ƿ�����ϵͳ·���У������������"
if "!path:%shortCutsDir%=!" equ "%path%" (
	echo "PATH�в��������ļ��У�׼�����"
	setx PATH "%PATH%;%shortCutsDir%"
	if not "!path:%shortCutsDir%=!" equ "%path%" (
		echo "����ļ��е�PATH�ɹ�"
		goto END
		)
	echo "����ļ��е�PATHʧ��"
	goto ERROR
)
echo "PATH���Ѿ��������ļ���"
goto END

:ERROR
echo "������������"
goto END

:END
pause
