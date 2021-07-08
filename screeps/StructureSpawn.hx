package screeps;

import screeps.Constants;

@:native("StructureSpawn") extern class StructureSpawn extends OwnedStructure {
	/**
	 * A Store object that contains a cargo of this structure. Spawns can contain only energy.
	 */
	var store: Store;
    /**
     * Start the creep spawning process. The required energy amount can be withdrawn from all spawns and extensions in the room.
     * @returns A creep on success or an errorcode on failure
     */
	function spawnCreep(body: Array<BodyPartConstant>): { ?object: Creep, ?error: SpawnCreepErrorReturnCode };

}
