function onEvent(lyrics) {
  if (lyrics.event.name == "Image Popup") {
    var params:Array = lyrics.event.params;
    var imagePath:String = "images/game/popups/" + params[0] + ".png";
    var stepsToStay:Int = Std.parseInt(params[1]); // Convert params[1] to an integer
    
    var popupImage:FlxSprite = new FlxSprite();
    popupImage.loadGraphic(imagePath);
    popupImage.screenCenter();
    popupImage.scrollFactor.set(0, 0); // Ensures the image stays fixed on the screen
    add(popupImage);

    // Use a timer to remove the image after the specified steps
    var stepDuration:Float = stepsToStay * Conductor.stepCrochet / 1000; // Convert steps to seconds
    var timer:FlxTimer = new FlxTimer();
    timer.start(stepDuration, function(timer:FlxTimer) {
      remove(popupImage);
    });
  }
}
