;========== [AHK] ==========
::'reload::
	Run, D:\OneDrive\autohotkey\main.ahk
	Sleep 300
	Send {Enter}
	Return
	
	
;========== [Start Software] =========
open_software(ByRef sName)
{
	Send {LWin}
	Sleep 500
	Send %sName%
	Send {Enter}
	Sleep 500
}

;========== [Global Function Key remapping] =========
F1::
	Send !{Left}
	Return
F2::
	Send !{Right}
	Return
F3::
	Send, ^#{Left}
	Return
F4::
	Send, ^#{Right}
	Return