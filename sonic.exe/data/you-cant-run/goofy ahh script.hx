import flixel.addons.display.FlxGridOverlay;
import handlers.Conductor;

var goofyahhmode:Bool = false;

function create(){
    var gridBG:FlxSprite = FlxGridOverlay.create(10, 10);
    gridBG.scrollFactor.set(2, 2);
    gridBG.color = 0xFF2C2C2C;
    stage.insert(0, gridBG);
    gridBG.scale.set(800 / defaultCamZoom, 800 / defaultCamZoom);
}

function update(elapsed) {
    if (FlxG.keys.justPressed.F1)
        goofyahhmode = true;
    
    if (goofyahhmode){
    if (curStep > 141 && curStep < 814){
        boyfriend.regX -= elapsed / -52 - 10;
        boyfriend.regY -= 0.00000000001;
        boyfriend.flipX = true;
    }

    if (curStep > 814){
        boyfriend.regX += elapsed / 52 + 10;
        boyfriend.regY -= 0.00000000001;
        boyfriend.flipX = false;
    }

   if (curStep > 150 && curStep < 831)
    dad.regX = boyfriend.regX - 800;

   if (curStep > 832){
    dad.regX = boyfriend.regX + 800;
    dad.flipX = true;
    gridBG.scrollFactor.set(-2, -2);
   }
}
}