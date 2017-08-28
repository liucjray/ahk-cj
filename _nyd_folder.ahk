::!dpcache::
	open_software("git bash")

	; 取得專案資料夾後開始刪除快取檔案
	Array := Object()
	Array.Insert("sy-trunk")
	Array.Insert("syerqu-trunk")
	Array.Insert("royal88-trunk")
	for index, project_name in Array
	{
		; 刪除 global_config.php
		ConfigPath := "/d/NYD/" . project_name . "/hollyasia/highgame/_app/config/global_config.php"
		SendInput [ -f %ConfigPath% ] && rm -rf %ConfigPath% || echo === %ConfigPath% file not found. === {Enter}
		Sleep 300
		; 刪除 highgame cache
		TmpGamePath := "/d/NYD/" . project_name . "/hollyasia/highgame/_tmp/"
		SendInput [ -d %TmpGamePath% ] && rm -rf %TmpGamePath% || echo === %TmpGamePath% folder not found. === {Enter}
		Sleep 300
		; 刪除 highadmin cache
		TmpAdminPath := "/d/NYD/" . project_name . "/hollyasia/highadmin/_tmp/"
		SendInput [ -d %TmpAdminPath% ] && rm -rf %TmpAdminPath% || echo === %TmpAdminPath% folder not found. === {Enter}
		Sleep 300
		; 刪除 library cache
		TmpLibPath := "/d/NYD/" . project_name . "/library/tmp/"
		SendInput [ -d %TmpLibPath% ] && rm -rf %TmpLibPath% || echo === %TmpLibPath% folder not found. === {Enter}
		Sleep 300
	}
	
	; 結束 git bash
	SendInput exit{Enter}
	Return