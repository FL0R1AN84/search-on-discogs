# Search on Discogs

Search current track from Apple Music on discogs.com

AppleScript to use it for Raycast or Shortcuts ([iCloud Link](https://www.icloud.com/shortcuts/318cd6d2c0134c49b5774b1ada4ae0ed "iCloud Link"))

```applescript
tell application "Music"
 set musicArtist to artist of current track
 set musicName to name of current track
 
-- Remove unwanted characters from the artist name
 set musicArtist to my replace(" & ", " ", musicArtist)
 set musicArtist to my replace(";", "", musicArtist)
 
 tell application "Safari"
  activate
  open location "https://www.discogs.com/search?q=" & musicArtist & "+" & musicName
 end tell
end tell

on replace(oldText, newText, sourceText)
 set {oldTIDs, AppleScript's text item delimiters} to {AppleScript's text item delimiters, oldText}
 set sourceText to text items of sourceText
 set AppleScript's text item delimiters to newText
 set sourceText to sourceText as text
 set AppleScript's text item delimiters to oldTIDs
 return sourceText
end replace
```
