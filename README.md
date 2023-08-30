# Search on Discogs

Search current track from Apple Music on discogs.com

AppleScript to use it for Raycast or Shortcuts ([iCloud Link](https://www.icloud.com/shortcuts/318cd6d2c0134c49b5774b1ada4ae0ed "iCloud Link"))

```applescript
tell application "Music"
 set musicArtist to {artist} of current track
 set musicName to {name} of current track
 tell application "Safari"
  activate
   open location "https://www.discogs.com/search?q=" & musicArtist & "+" & musicName
 end tell
end tell
```
