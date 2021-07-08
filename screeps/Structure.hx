package screeps;

import screeps.Constants;

typedef StructureJSON = {
	hits:Int,
	hitsMax:Int
}

@:native("Structure") extern class Structure extends GameObject<Structure> {

	/**
	 * The current amount of hit points of the structure.
	 */
	var hits: Int;
	 /**
	  * The total amount of hit points of the structure.
	  */
	var hitsMax: Int;
	 // /**
	 //  * A unique object identifier. You can use Game.getObjectById method to retrieve an object instance by its id.
	 //  */
	 // id: Id<this>;

	 /**
	  * One of the STRUCTURE_* constants.
	  */
	var structureType: StructureConstant;
	 // /**
	 //  * Destroy this structure immediately.
	 //  */
	 // destroy(): ScreepsReturnCode;
	 // /**
	 //  * Check whether this structure can be used. If the room controller level is not enough, then this method will return false, and the structure will be highlighted with red in the game.
	 //  */
	 // isActive(): boolean;
	 // /**
	 //  * Toggle auto notification when the structure is under attack. The notification will be sent to your account email. Turned on by default.
	 //  * @param enabled Whether to enable notification or disable.
	 //  */
	 // notifyWhenAttacked(enabled: boolean): ScreepsReturnCode;

	function toJSON(): StructureJSON;
}
