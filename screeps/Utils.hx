package screeps;

import screeps.GameObject;
import screeps.Constants;
import screeps.PathFinder;

@:native("ScreepsGameUtils") extern class Utils {

	static function getCpuTime():Int;

	/**
	 * Get count of game ticks passed since the start of the game
	 */
	static function getTicks():Int;
	/**
	 * Get an object with the specified unique ID.
	 * @param id
	 */
	static function getObjectById<T>(id:Id<T>):T;
	/**
	 * Get all objects in the game.
	 */
	static function getObjects():Array<GameObject<Dynamic>>;
	/**
	 * Get all objects in the game with the specified prototype, for example, all creeps
	 * @param prototype
	 */
	// static function getObjectsByPrototype<T>(prototype:_Constructor<T>):T[];
	static function getObjectsByPrototype<T>(prototype:Class<T>):Array<T>;
	/**
	 * Use this method to get heap statistics for your virtual machine
	 */
	static function getHeapStatistics():HeapStatistics;
	/**
	 * Get linear direction by differences of x and y
	 * @param dx
	 * @param dy
	 */
	static function getDirection(dx:Int, dy:Int):DirectionConstant;

	/**
	 * Find an optimal path between fromPos and toPos. Unlike searchPath,
	 * findPath avoid all obstacles by default (unless costMatrix is specified).
	 * @param fromPos
	 * @param toPos
	 * @param opts object containing additional options:
	 * ignore:array (objects which should be treated as obstacles during the search)
	 * Any options supported by searchPath method
	 */
	static function findPath(fromPos:RoomPosition, toPos:RoomPosition, ?opts:FindPathOpts):Array<PathStep>;

	/**
	 * Get linear range between two objects. a and b may be any object containing x and y properties.
	 * @param a
	 * @param b
	 * @deprecated alias for getRange
	 */
	static function getDistance(a:RoomPosition, b:RoomPosition):Int;

	/**
	 * Get linear range between two objects. a and b may be any object containing x and y properties.
	 * @param a
	 * @param b
	 */
	static function getRange(a:RoomPosition, b:RoomPosition):Int;

	/**
	 * Get an integer representation of the terrain at the given position.
	 * Returns TERRAIN_WALL, TERRAIN_SWAMP, or 0.
	 * @param pos pos should be an object containing x and y properties
	 */
	// static function getTerrainAt(pos:RoomPosition):TERRAIN_WALL | TERRAIN_SWAMP | 0;
	static function getTerrainAt(pos:RoomPosition):TerrainConstant;

	/**
	 * Find all positions from the given positions array within the specified linear range.
	 * @param fromPos
	 * @param positions
	 * @param range
	 */
	static function findInRange<T:RoomPosition>(fromPos:RoomPosition, positions:Array<T>, range:Int):Array<RoomPosition>;

	/**
	 * Find a position with the shortest linear distance from the given position, or null otherwise.
	 * @param fromPos
	 * @param positions
	 */
	static function findClosestByRange<T:RoomPosition>(fromPos:RoomPosition, positions:Array<T>):RoomPosition;

	/**
	 * Find a position with the shortest path from the given position, or null otherwise.
	 * @param fromPos
	 * @param positions
	 * @param opts object containing additional options:
	 * ignore:array (objects which should be treated as obstacles during the search)
	 * Any options supported by searchPath method
	 */
	static function findClosestByPath<T:RoomPosition>(fromPos:RoomPosition, positions:Array<T>, ?opts:FindPathOpts):RoomPosition;

	/**
	 * Create new ConstructionSite at the specified location.
	 * @param x The X position.
	 * @param y The Y position.
	 * @param structurePrototype One of the following constants:StuctureExtension, StructureTower
	 * @returns Result Code:OK, ERR_INVALID_TARGET, ERR_INVALID_ARGS, ERR_RCL_NOT_ENOUGH
	 */
	static function createConstructionSite(x:Int, y:Int, structureType:Class<Structure>):{ ?object:ConstructionSite, ?error:CreateConstructionSiteReturnCode };

}

typedef HeapStatistics = {
	total_heap_size:Int,
	total_heap_size_executable:Int,
	total_physical_size:Int,
	total_available_size:Int,
	used_heap_size:Int,
	heap_size_limit:Int,
	malloced_memory:Int,
	peak_malloced_memory:Int,
	does_zap_garbage:Int,
	externally_allocated_size:Int
}

