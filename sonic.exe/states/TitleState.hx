import flixel.util.FlxTimer;

var textTitle:FlxSprite;
var bg:FlxSprite;
var enter1:Bool;

function createPost() {
	bg = new FlxSprite(0, 0);
	bg.frames = Files.sparrowAtlas('menus/titlescreen/NewTitleMenuBG');
	bg.animation.addByPrefix('idle', "TitleMenuSSBG instance 1", 24);
	bg.animation.play('idle');
	bg.scale.x = 3;
	bg.scale.y = 3;
	bg.antialiasing = true;
	bg.updateHitbox();
	bg.screenCenter();
	add(bg);

	logoCool = new FlxSprite(0, 0);
	logoCool.loadGraphic(Files.image('menus/titlescreen/logo'));
	logoCool.antialiasing = true;
	logoCool.scale.set(0.5, 0.5);
	logoCool.screenCenter();
	add(logoCool);

	textTitle = new FlxSprite(0, 0);
	textTitle.frames = Files.sparrowAtlas('menus/titlescreen/titleEnterNEW');
	textTitle.animation.addByPrefix('idle', "Press Enter to Begin instance 1", 24);
	textTitle.animation.addByPrefix('press', "ENTER PRESSED instance 1", 24, false);
	textTitle.antialiasing = true;
	textTitle.animation.play('idle');
	textTitle.updateHitbox();
	textTitle.screenCenter();
	add(textTitle);
}

function updatePost() {
	if (controls.ACCEPT) {
		if (!enter1)
			textTitle.animation.play('press');

		enter1 = true;

		new FlxTimer().start(2, function(tmr:FlxTimer) {
			{
				FlxG.switchState(new states.menus.MainMenuState());
			}
		});
	}
}
