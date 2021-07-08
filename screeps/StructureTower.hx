package screeps;

import screeps.Constants;

@:native("StructureTower") extern class StructureTower extends OwnedStructure {
	 /**
	  * A Store object that contains a cargo of this structure. Towers can contain only energy.
	  */
	var store: Store;
 
	 /**
	  * 10-ticks cooldown for towers (Tower.cooldown). Exception: towers in CTF can shoot each tick.
	  */
	var cooldown: Int;
	 /**
	  * Remotely attack any creep or structure.
	  * The target has to be within 50 squares range of the tower.
	  * Attack effectiveness	600 hits at range ≤5 to 150 hits at range ≥20
	  */
	@:overload(function(target:Structure):ScreepsReturnCode {})
	function attack(target: AnyCreep): ScreepsReturnCode;
	 /**
	  * Remotely heal any creep.
	  * The target has to be within 50 squares range of the tower.
	  * Heal effectiveness	400 hits at range ≤5 to 100 hits at range ≥20
	  */
	function heal(target: AnyCreep): ScreepsReturnCode;
 
	 // // /**
	 // //  * Remotely heal any creep.
	 // //  * The target has to be within 50 squares range of the tower.
	 // //  * Repair effectiveness	800 hits at range ≤5 to 200 hits at range ≥20
	 // //  * @param target
	 // //  */
	 // // repair(target: Structure): ScreepsReturnCode;

}
