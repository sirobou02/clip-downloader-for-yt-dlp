@echo off
setlocal

echo �A�b�v�f�[�g�m�F���c�c
yt-dlp -U > nul
if %errorlevel% neq 0 (
	echo;
	echo yt-dlp��������Ȃ����A�A�b�v�f�[�g�Ɏ��s���܂���
	pause
	exit /b
)
echo �m�F����
echo;

echo �����URL����͂��Ă�������
echo ���������悩��DL����ꍇ�A���DL��������̖��O��ς��Ă�������
set /p url=""
echo;

echo DL���铮��̎��Ԃ��w�肵�Ă�������
echo �ၨ00:00-01:30
echo ���O��10�b���炢�͗]�T�������Ďw�肵�Ă��������@���̕����͉f��������܂�
echo ���w�肵�Ȃ��ꍇ�́un�v�����
set /p length=""
echo;

echo �����DL���c�c

if %length% == n (
	yt-dlp %url% -f bestvideo[ext=mp4]+bestaudio[ext=m4a] -S vcodec:h264
) else (
	yt-dlp %url% --download-sections *%length% -f bestvideo[ext=mp4]+bestaudio[ext=m4a] -S vcodec:h264
)

pause

endlocal