package screeps;

import haxe.Constraints;

import screeps.Constants;

abstract Store(IStore) {

	@:arrayAccess inline function get(k:ResourceConstant):Int {
		return this.getUsedCapacity(k);
	}

	inline public function getCapacity(?resource: ResourceConstant): Null<Int>{
		return this.getCapacity(resource);
	}

	inline public function getUsedCapacity(?resource: ResourceConstant): Null<Int>{
		return this.getUsedCapacity(resource);
	}

	inline public function getFreeCapacity(?resource: ResourceConstant): Null<Int>{
		return this.getFreeCapacity(resource);
	}

}

@:native("Store") extern class IStore {

	/**
	 * Returns capacity of this store for the specified resource. For a general purpose store, it returns total capacity if `resource` is undefined.
	 * @param resource The type of the resource.
	 * @returns Returns capacity number, or `null` in case of an invalid `resource` for this store type.
	 */
	function getCapacity(?resource: ResourceConstant): Null<Int>;

	 /**
		* Returns the capacity used by the specified resource. For a general purpose store, it returns total used capacity if `resource` is undefined.
		* @param resource The type of the resource.
		* @returns Returns used capacity number, or `null` in case of a not valid `resource` for this store type.
		*/
	function getUsedCapacity(?resource: ResourceConstant): Null<Int>;
 
	 /**
		* Returns free capacity for the store. For a limited store, it returns the capacity available for the specified resource if `resource` is defined and valid for this store.
		* @param resource The type of the resource.
		* @returns Returns available capacity number, or `null` in case of an invalid `resource` for this store type.
		*/
	function getFreeCapacity(?resource: ResourceConstant): Null<Int>;
}
