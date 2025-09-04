function onEvent(event) {
  if(event.event.name == Play Sound)
  {
     FlxG.sound.play(SoundFilePath, Volume, Looped)
    FlxG.sound.play(Paths.sound(event.event.params[0]), event.event.params[1], event.event.params[2]);
  }
}