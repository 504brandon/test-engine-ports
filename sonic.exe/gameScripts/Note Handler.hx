function noteCreate(params) {
	switch (params.jsonData[3]){
	 case 'Static Note':
	  	params.spritePath = "notes/STATICNOTE_assets";
	 case 'Phantom Note':
		params.spritePath = "notes/PHANTOMNOTE_assets";
		params.canMiss = false;
}
}

function bfNoteHit(params) {
	switch (params.jsonData[3]){
	 case 'No Animation':
		boyfreind.dance();
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