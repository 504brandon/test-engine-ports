function update(){
    switch (curStep){
        case 520:
            dad.playAnim('scream', true);
            boyfriend.playAnim('hurt', true);
        case 527:
            dad.loadCharacter('ycrpixel');
            boyfriend.loadCharacter('bfpixel');
            gf.kill();
            defaultCamZoom = 0.82;
        case 782:
            boyfriend.loadCharacter('bf');
            dad.loadCharacter('ycr-mad');
            gf.revive();
            defaultCamZoom = 0.64;
    }
}