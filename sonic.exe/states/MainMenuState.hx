import handlers.CoolUtil;

function create() {
	optionShit = ['story mode', 'encore', 'freeplay', 'sound test', 'options', 'extras'];
}

function createBellowItems() {
	var bg2:FlxSprite = new FlxSprite();
	bg2.frames = Files.sparrowAtlas('menus/mainmenu/Main_Menu_Spritesheet_Animation');
	bg2.animation.addByPrefix('a', 'BG instance 1');
	bg2.animation.play('a', true);
	bg2.scrollFactor.x = 0;
	bg2.scrollFactor.y = 0;
	bg2.updateHitbox();
	bg2.screenCenter();
	bg2.antialiasing = true;
	add(bg2);
}

function update(elapsed) {
	if (controls.ACCEPT) {
		var daChoice:String = optionShit[curSelected];

		switch (daChoice) {
			case 'sound test':
				CoolUtil.switchToCustomState('SoundTestingTestAhhTataHeInside');
				trace('better not be null');
			case 'encore', 'extras':
				FlxG.switchState(new states.menus.FreeplayState());
		}
	}
}

function updatePost(elapsed) {
	if (FlxG.keys.justPressed.TAB)
		CoolUtil.switchToCustomState('teststate');

	for (i in 0...optionShit.length) {
		var offset:Float = 120 - (Math.max(optionShit.length, 2) - 3) * 30;
		menuItems.members[i].setPosition(554 + 70 * i, (i * 100) + offset);
	}
}
