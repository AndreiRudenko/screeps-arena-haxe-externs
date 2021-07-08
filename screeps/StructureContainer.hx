package screeps;

import screeps.Constants;

@:native("StructureContainer") extern class StructureContainer extends OwnedStructure {
    /**
     * A Store object that contains a cargo of this structure. Spawns can contain only energy.
     */
	var store: Store;
}
