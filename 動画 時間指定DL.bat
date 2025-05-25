@echo off
setlocal

echo アップデート確認中……
yt-dlp -U > nul
if %errorlevel% neq 0 (
	echo;
	echo yt-dlpが見つからないか、アップデートに失敗しました
	pause
	exit /b
)
echo 確認完了
echo;

echo 動画のURLを入力してください
echo ※同じ動画からDLする場合、先にDLした動画ファイルの名前を変えておくこと
set /p url=""
echo;

echo DLする動画の時間を指定してください
echo 例→00:00-01:30
echo ※前後10秒くらいは余裕を持って指定してください　その部分は映像が乱れます
echo ※指定しない場合は「n」を入力
set /p length=""
echo;

echo 動画をDL中……

if %length% == n (
	yt-dlp %url% -f bestvideo[ext=mp4]+bestaudio[ext=m4a] -S vcodec:h264
) else (
	yt-dlp %url% --download-sections *%length% -f bestvideo[ext=mp4]+bestaudio[ext=m4a] -S vcodec:h264
)

pause

endlocal
