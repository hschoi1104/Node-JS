@echo off

 

set starttime=%TIME%

set startcsec=%STARTTIME:~9,2%

set startsecs=%STARTTIME:~6,2%

set startmins=%STARTTIME:~3,2%

set starthour=%STARTTIME:~0,2%

set /a starttime=(%starthour%*60*60*100)+(%startmins%*60*100)+(%startsecs%*100)+(%startcsec%)

 

A.exe < in06.txt > myout6.txt

 

@rem �۾� �ð� ���

 

set endtime=%time%

set endcsec=%endTIME:~9,2%

set endsecs=%endTIME:~6,2%

set endmins=%endTIME:~3,2%

set endhour=%endTIME:~0,2%

if %endhour% LSS %starthour% set /a endhour+=24

set /a endtime=(%endhour%*60*60*100)+(%endmins%*60*100)+(%endsecs%*100)+(%endcsec%)

 

set /a timetaken= ( %endtime% - %starttime% )

set /a timetakens= %timetaken% / 100

set timetaken=%timetakens%.%timetaken:~-2%

 

 

@rem ��� ȭ�� ���

echo.

fc /n /w out06.txt myout6.txt

echo.

echo.

@echo ����ð� %timetaken% sec.

echo.

echo.

 

pause