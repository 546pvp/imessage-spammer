(*
@name - iMessage NUKE
@description - This script sends unlimited amount of messages faster than sending it throught the "shortcuts" app
@author - 546pvp
*)
on run {}
	set FirstMsg to false
	set counter to 1
	set messageDialog to display dialog "Message >>>" default answer ""
	set message to text returned of messageDialog
	set targetBuddyPhoneDialog to display dialog "Email >>" default answer ""
	set targetBuddyPhone to text returned of targetBuddyPhoneDialog
	set numbahDialog to display dialog "Times >>>" default answer ""
	set numbah to text returned of numbahDialog as number
	repeat numbah times
		tell application "Messages"
			set targetService to 1st account whose service type = iMessage
			set targetBuddy to participant targetBuddyPhone of targetService
			if FirstMsg is equal to false then
				send ("LAUNCHING NUKE IN 5 SECS") to targetBuddy
				set FirstMsg to true
				delay 5
			end if
			send (message & " " & counter) to targetBuddy
			log ("Msg: " & message & " | " & counter)
		end tell
		set counter to (counter + 1)
	end repeat
	beep
	beep
end run
