package screeps;

import screeps.Constants;
import screeps.Structure;

typedef OwnedStructureJSON = {
	>StructureJSON,
	?my:Bool
}

@:native("OwnedStructure") extern class OwnedStructure extends Structure {
	/**
	 * Whether this is your own structure. Walls and roads don't have this property as they are considered neutral structures.
	 */
	var my: Bool;
 
	function toJSON(): OwnedStructureJSON;
}
