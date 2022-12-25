import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;

var garlfraid:FlxSprite = null;
var theyhavetakeneverythingfromme:FlxSprite = null;

function create() {
	defaultCamZoom = 0.7;
    gf.visible = false;

	var bg:FlxSprite = new FlxSprite(-1400, -725).loadGraphic(Files.image('stages/isotope/glitch_City'));
	bg.setGraphicSize(Std.int(bg.width * 0.625));
	bg.antialiasing = true;
	bg.scrollFactor.set(0.80, 0.80);
	bg.active = false;
	add(bg);

	var tiles:FlxSprite = new FlxSprite(-1400, -725).loadGraphic(Files.image('stages/isotope/tiles'));
	tiles.setGraphicSize(Std.int(tiles.width * 0.625));
	tiles.antialiasing = true;
	tiles.scrollFactor.set(0.9, 0.9);
	tiles.active = false;
	add(tiles);

	var haze:FlxSprite = new FlxSprite(-1400, -725).loadGraphic(Files.image('stages/isotope/haze'));
	haze.setGraphicSize(Std.int(haze.width * 0.625));
	haze.antialiasing = true;
	haze.scrollFactor.set(0.9, 0.9);
	haze.active = false;
	add(haze);

	garlfraid = new FlxSprite(600, 576);
	garlfraid.frames = Files.sparrowAtlas('stages/isotope/FUCKKKKK');
	garlfraid.animation.addByPrefix('idle', 'Lmao', 24, false);
	garlfraid.updateHitbox();
	garlfraid.antialiasing = true;
	add(garlfraid);

	theyhavetakeneverythingfromme = new FlxSprite(500, 50);
	theyhavetakeneverythingfromme.frames = Files.sparrowAtlas('stages/isotope/they_took_everything_from_me');
	theyhavetakeneverythingfromme.animation.addByPrefix('speech', 'GlitchySpeak', 24, false);
	theyhavetakeneverythingfromme.updateHitbox();
	theyhavetakeneverythingfromme.antialiasing = true;
	theyhavetakeneverythingfromme.alpha = 0.0001;
	add(theyhavetakeneverythingfromme);
	theyhavetakeneverythingfromme.setGraphicSize(Std.int(theyhavetakeneverythingfromme.width * 1.25));
}

function beatHit() {
	garlfraid.animation.play('idle');
}

function update() {
    switch (curStep) {
        case 1871:
            cutsense();
    }
}

function cutsense() {
    defaultCamZoom = 1.25;
    camGame.zoom = 1.25;
    camGame.alpha = 0.001;
    camHUD.visible = false;
    new FlxTimer().start(0.4, function(tmr:FlxTimer)
        {
            FlxTween.tween(camGame, {alpha: 0.5}, 1.6, {ease: FlxEase.quadInOut});
            theyhavetakeneverythingfromme.x += 150;
            FlxTween.tween(theyhavetakeneverythingfromme, {x: theyhavetakeneverythingfromme.x - 150, alpha: 1.0}, 9.0, {ease: FlxEase.quadInOut});
        });

    boyfriend.visible = false;
    dad.visible = false;
    garlfraid.visible = false;
    theyhavetakeneverythingfromme.animation.play('speech');
    theyhavetakeneverythingfromme.animation.finishCallback = function(name:String) 
    {
        theyhavetakeneverythingfromme.visible = false;
        camGame.visible = false;
        camHUD.visible = false;
        defaultCamZoom = 0.7;
        camGame.zoom = 0.7;

        new FlxTimer().start(0.5, function(tmr:FlxTimer)
            {
                camGame.zoom = 0.9;
                camGame.alpha = 1.0;
                camGame.visible = true;
                camHUD.visible = true;
                boyfriend.visible = true;
                dad.visible = true;
                garlfraid.visible = false;
            });
    }
}