import flixel.addons.display.FlxGridOverlay;
import flixel.system.FlxSound;
import flixel.FlxObject;
import flixel.addons.ui.FlxUIInputText;
import flixel.ui.FlxButton;
import states.menus.MainMenuState;
import handlers.Character;

var char:Character;
var charname:FlxUIInputText;
var songname:FlxUIInputText;
var camFollow:FlxObject;
var vocals:FlxSound;

function create() {
FlxG.mouse.visible = true;
FlxG.sound.music.stop();
vocals = new FlxSound();

var gridBG:FlxSprite = FlxGridOverlay.create(99, 99);
gridBG.scrollFactor.set(0, 0);
gridBG.color = 0xFF2C2C2C;
add(gridBG);

char = new Character(0, 0, 'sonicexe');
add(char);

charname = new FlxUIInputText(20, 20, 70, char.curCharacter, 10);
charname.scrollFactor.set(0, 0);
add(charname);

var ChangeButton:FlxButton = new FlxButton(charname.x,40, "Change Char", function()
	{
		char.loadCharacter(charname.text);
	});
add(ChangeButton);

songname = new FlxUIInputText(charname.x, 60, 70, 'bopeebo', 10);
songname.scrollFactor.set(0, 0);
add(songname);

var ChangeSongButton:FlxButton = new FlxButton(charname.x,80, "Change Song", function()
	{
		vocals.stop();
		FlxG.sound.music.stop();
		vocals.loadEmbedded((Files.song(songname.text +'/Voices')));
		vocals.play();
		FlxG.sound.playMusic(Files.song(songname.text +'/Inst'), 1);
	});
add(ChangeSongButton);

camFollow = new FlxObject(0, 0, 2, 2);
camFollow.screenCenter();
add(camFollow);

FlxG.camera.follow(camFollow);
}

function update() {
	vocals.time = FlxG.sound.music.time;
	vocals.volume = FlxG.sound.music.volume;

	if (FlxG.keys.justPressed.LEFT)
		char.playAnim('singLEFT', true);

	if (FlxG.keys.justPressed.UP)
		char.playAnim('singUP', true);

	if (FlxG.keys.justPressed.DOWN)
		char.playAnim('singDOWN', true);

	if (FlxG.keys.justPressed.SPACE)
		char.playAnim('singDOWN-alt', true);

	if (FlxG.keys.justPressed.RIGHT)
		char.playAnim('singRIGHT', true);

	if (FlxG.keys.justPressed.SEVEN)
		FlxG.resetState();
	
	if (FlxG.keys.justPressed.ESCAPE){
		FlxG.switchState(new MainMenuState());
		vocals.destroy();
	}

	if (FlxG.keys.pressed.I || FlxG.keys.pressed.J || FlxG.keys.pressed.K || FlxG.keys.pressed.L)
		{
			if (FlxG.keys.pressed.I)
				camFollow.velocity.y = -90;
			else if (FlxG.keys.pressed.K)
				camFollow.velocity.y = 90;
			else
				camFollow.velocity.y = 0;

			if (FlxG.keys.pressed.J)
				camFollow.velocity.x = -90;
			else if (FlxG.keys.pressed.L)
				camFollow.velocity.x = 90;
			else
				camFollow.velocity.x = 0;
		}
		else
		{
			camFollow.velocity.set();
		}
}

function beatHit() {
	char.dance();
}