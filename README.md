# Search on Discogs

Search current track from Apple Music on discogs.com

AppleScript to use it for Raycast or Shortcuts

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
