function create() {
    defaultCamZoom = 0.9;

	var bg:FlxSprite = new FlxSprite(-500, -170).loadGraphic(Files.image('stages/alley3/garStagebgRise'));
	bg.antialiasing = true;
	bg.scrollFactor.set(0.7, 0.7);
	bg.active = false;
	add(bg);

	var bgAlley:FlxSprite = new FlxSprite(-500, -200).loadGraphic(Files.image('stages/alley3/garStageRise'));
	bgAlley.antialiasing = true;
	bgAlley.scrollFactor.set(0.9, 0.9);
	bgAlley.active = false;
	add(bgAlley);

	var corpse:FlxSprite = new FlxSprite(-230, 540).loadGraphic(Files.image('stages/alley2/gardead'));
	corpse.antialiasing = true;
	corpse.scrollFactor.set(0.9, 0.9);
	corpse.active = false;
	add(corpse);
}
