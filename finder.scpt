on run argv
	if (count of argv) > 0 then
		set argdir to characters of (item 1 of argv)
	else 
		set argdir to characters of "."
	end if
end run

tell application "Finder"
	
	activate
	
	set nowdir to folder of (path to me) as Unicode text
	
	display dialog {"show current dir", nowdir} as Unicode text
	
	tell application "System Events"
		keystroke "t" using command down
	end tell
	
end tell
