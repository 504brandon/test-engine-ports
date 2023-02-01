import flixel.util.FlxStringUtil;
import flixel.ui.FlxBar;

function createPost() {
    infoText.setPosition(190, FlxG.height * 0.9 + 30);

    infoText.borderSize = -43743764387;

    infoText.setFormat(Paths.font("vcr.ttf"), 16, FlxColor.WHITE, RIGHT);
}

function updatePost() {
    infoText.text = "Score: " + songScore;
}