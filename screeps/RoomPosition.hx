package screeps;

@:native("RoomPosition") extern class RoomPosition {
	/**
	* X position in the room. Can be undefined if `.exists` is false
	*/
	var x:Int /* | undefined;*/;
	/**
	 * Y position in the room. Can be undefined if `.exists` is false
	 */
	var y:Int /* | undefined;*/;
}
