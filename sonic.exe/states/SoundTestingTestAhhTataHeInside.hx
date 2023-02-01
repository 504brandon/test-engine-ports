var bg:FlxSprite;

function create() {
    bg = new FlxSprite();
    bg.loadGraphic(Files.image('menus/backgroundST'));
    bg.screenCenter();
    add(bg);
}

function update() {
    if (FlxG.keys.justPressed.ESCAPE)
        FlxG.switchState(new states.menus.MainMenuState());
}