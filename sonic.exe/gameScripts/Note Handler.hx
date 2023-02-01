import flixel.tweens.FlxTween;

var events = [];

function noteCreate(params) {
	switch (params.jsonData[3]){
	 case 'Static Note':
	  	params.spritePath = "notes/STATICNOTE_assets";
	 case 'Phantom Note':
		params.spritePath = "notes/PHANTOMNOTE_assets";
		params.canMiss = false;
}

	if (params.jsonData[1] == -1 || params.jsonData[1] < 0) 
		events.push({strumTime: params.jsonData[0], name: params.jsonData[2], value1: params.jsonData[3], value2: params.jsonData[4]});
}

function bfNoteHit(params) {
	switch (params.jsonData[3]){
	 case 'No Animation':
		boyfriend.dance();
	case 'Phantom Note':
		noteMiss();
	}
}

function dadNoteHit(params) {
	switch (params.jsonData[3]){
	 case 'No Animation':
		dad.dance();
	}
}

function triggerEvent(name:String, value1:String, value2:String) {
	switch (name){
	  case 'Majin spin':
		for (i in 0...8)
			FlxTween.tween(strumLineNotes.members[i], {angle: 360}, 0.2, {onComplete: function(twen:FlxTween) {
			strumLineNotes.members[i].angle = 0;
		}});
	  case 'RedVG':
		var CoolRedThing:FlxSprite = new FlxSprite(0, 0, Files.image('event stuff/redVG'));
		CoolRedThing.cameras = [camHUD];
		CoolRedThing.screenCenter();
		add(CoolRedThing);
		FlxTween.tween(CoolRedThing, {alpha: 1}, 3, {onComplete: function() {
			FlxTween.tween(CoolRedThing, {alpha: 0}, 0.34);
		}});
	 case 'TooSlowFlashinShit':
		trace('unfinnished');
	}
}

function update() {
	for (event in events) {
	  if (event.strumTime >= Conductor.songPosition) continue;
	  triggerEvent(event.name, event.value1, event.value2);
	  events.remove(event);
	}
  }