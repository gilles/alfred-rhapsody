tell application "Safari"
  set browserwindows to every window
  repeat with browserwindow in browserwindows
    repeat with currtab in tabs of browserwindow
      set n to name of currtab
      try
        if n contains "Rhapsody" then set musicTab to currtab
      end try
    end repeat
  end repeat
  do JavaScript "playNext()" in currtab
end tell
