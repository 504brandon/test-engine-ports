import flixel.util.FlxTimer;

function update() {
	if (dad.curCharacter == 'garcelloghosty') {
		if (curStep == 247) {
			dad.playAnim('garFarewell', true);
		}
	}

	if (dad.curCharacter == 'garcelloghosty') {
		if (curStep == 249) {
			new FlxTimer().start(0.1, function(tmr:FlxTimer) {
				dad.alpha -= 0.05;
				iconP2.alpha -= 0.05;

				if (dad.alpha > 0) {
					tmr.reset(0.1);
				}
			});
		}
	}
}
