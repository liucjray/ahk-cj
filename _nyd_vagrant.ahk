::!vup::
	open_software("git bash")
	Send cd /d/vm/ez20160922
	Send {Enter}
	Send vagrant up
	Send {Enter}
	Return
	
::!vhalt::
	open_software("git bash")
	Send cd /d/vm/ez20160922
	Send {Enter}
	Send vagrant halt
	Send {Enter}
	Return