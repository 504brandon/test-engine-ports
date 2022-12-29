function update() {
    if (PlayState.SONG.song.toLowerCase() == 'too-slow-encore'){
        switch (curStep) {
            case 384:
                FlxG.camera.visible = false;
            case 400:
                FlxG.camera.visible = true;
                dad.loadCharacter("sonicexe");
                iconP2.changeIcon('sonicexe');
                dad.regX = -203.5;
                dad.regY = 121.4;
        }
    }
}