var lyricsText:FlxText = null; // Declare a variable to store the text object

function onEvent(lyrics) {
  if (lyrics.event.name == "lyrics-second-line") {
    var params:Array = lyrics.event.params;

    var fontWeight:String = (params[4] == true) ? "bold" : "normal";

    if (lyricsText == null) {
      // Create the text object only once
      lyricsText = new FlxText(150, 525, 1000, params[0]);
      lyricsText.setFormat(params[3], params[2], params[1], "center", fontWeight);
      lyricsText.scrollFactor.set(0, 0); // Make it stay in place
      add(lyricsText);
    } else {
      // Update the existing text object
      lyricsText.text = params[0];
      lyricsText.setFormat(params[3], params[2], params[1], "center", fontWeight);
    }
  }
}