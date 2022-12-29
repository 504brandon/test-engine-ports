import flixel.util.FlxStringUtil;
import flixel.ui.FlxBar;

function updatePost() {
    infoText.text = "Score: " + songScore + " || Misses: " + songMisses + " || Combo: " + combo + " || Notes Hit: " + notesHit + " || Time: " + FlxStringUtil.formatTime((FlxG.sound.music.length - Math.max(Conductor.songPosition, 0)) / 1000, false);
}