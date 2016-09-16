tell application "Evernote"
	--find all the notes with the tag "Important"; change this to whatever you want
	set myNote to (find notes "tag:Important")
	--create a loop where it repeats the same actions on each individual note
	repeat with n in myNote
		--grab the modification date before you change anything
		set ModDate to (modification date of n)
		--tell it what you want to add; change inside the quotes to whatever you want
		set textToAdd to "#Important"
		--grab the existing note as it is now
		set noteContents to HTML content of n
		--get ready to change the note's contents to be itself, plus the hashtag from line 9 at the end 
		set fullHtmlContent to noteContents & textToAdd
		--change the content
		set HTML content of n to fullHtmlContent
		--make the modification date of the note its original modification date
		set (modification date of n) to ModDate
	end repeat
end tell
