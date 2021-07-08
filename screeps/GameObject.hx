package screeps;

import screeps.PathFinder;

typedef RoomObjectJSON = {
	id:Int,
	x:Int,
	y:Int
}

@:native("GameObject") extern class GameObject<T> extends RoomPosition {
	/**
	* A unique object identificator.
	* You can use {@link getObjectById} method to retrieve an object instance by its id.
	*/
	var id: Id<T>;

	/**
	 * Returns true if this object is live in the game at the moment. Check this property to verify cached or newly created object instances.
	 */
	var exists: Bool;
 
	/**
	 * Get linear range to another position. pos may be any object containing x and y properties.
	 * @param pos
	 */
	function getRangeTo(pos: RoomPosition): Int;
 
	/**
	 * Returns the path from this object to another position. pos can be any object containing x and y properties. See /game/utils::findPath for details.
	 * @param pos
	 * @param opts
	 */
	function findPathTo(pos: RoomPosition, ?opts: FindPathOpts): Array<PathStep>;
 
	/**
	 * Find all positions from the given positions array within the specified linear range.
	 * @param positions
	 * @param range
	 */
	function findInRange<T:RoomPosition>(positions: Array<T>, range: Int): Array<RoomPosition>;
 
	/**
	 * Find a position with the shortest linear distance from the given position, or null otherwise.
	 * @param positions
	 */
	function findClosestByRange<T:RoomPosition>(positions: Array<T>): RoomPosition;
 
	/**
	 * Find a position with the shortest path from the given position, or null otherwise.
	 * @param positions
	 * @param opts object containing additional options:
	 * ignore: array (objects which should be treated as obstacles during the search)
	 * Any options supported by searchPath method
	 */
	function findClosestByPath<T:RoomPosition>(positions: Array<T>, ?opts: FindPathOpts): RoomPosition;
 
	function toJSON(): RoomObjectJSON;
}
