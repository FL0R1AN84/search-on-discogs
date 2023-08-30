#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search on Discogs
# @raycast.mode compact

# Optional parameters:
# @raycast.icon images/apple-music-logo.png

# Documentation:
# @raycast.author FL0R1AN
# @raycast.authorURL https://raycast.com/FL0R1AN

tell application "Music"
	set musicArtist to {artist} of current track
	set musicName to {name} of current track
	tell application "Safari"
		activate
			open location "https://www.discogs.com/search?q=" & musicArtist & "+" & musicName})
	end tell
end tell

