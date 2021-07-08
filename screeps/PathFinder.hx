package screeps;

import haxe.extern.EitherType;
import js.lib.Uint8Array;

import screeps.RoomPosition;

@:native("CostMatrix") extern class CostMatrix {

	public function new():Void;

	var _bits: Uint8Array;

	/**
	 * Set the cost of a position in this CostMatrix.
	 * @param x X position in the room.
	 * @param y Y position in the room.
	 * @param cost Cost of this position. Must be a whole number. A cost of 0 will use the terrain cost for that tile. A cost greater than or equal to 255 will be treated as unwalkable.
	 */
	function set(x: Int, y: Int, cost: Int): Void;

	/**
	 * Get the cost of a position in this CostMatrix.
	 * @param x X position in the room.
	 * @param y Y position in the room.
	 */
	function get(x: Int, y: Int): Int;

	/**
	 * Copy this CostMatrix into a new CostMatrix with the same data.
	 */
	function clone(): CostMatrix;

	/**
	 * Returns a compact representation of this CostMatrix which can be stored via JSON.stringify.
	 */
	function serialize(): Array<Int>;

	/**
	 * Static method which deserializes a new CostMatrix using the return value of serialize.
	 * @param val Whatever serialize returned
	 */
	function deserialize(val: Array<Int>): CostMatrix;
}

typedef FindPathOpts = {

    /**
     * (Instead of searching for a path to the goals this will search for a path away from the goals.
     * The cheapest path that is out of range of every goal will be returned.
     * The default is false)
     */
	?flee: Bool,

	 /**
	  * The maximum limit of possible pathfinding operations. You can limit CPU time used for the search based on ratio 1 op ~ 0.001 CPU.
	  * The default value is 2000.
	  */
	?maxOps: Int,
 
	 /**
	  * (The maximum allowed cost of the path returned. The default is Infinity.)
	  */
	?maxCost: Int,
 
	 /**
	  * Weight to apply to the heuristic in the A* formula F = G + weight * H. Use this option only if you understand the underlying
	  * A* algorithm mechanics! The default value is 1.2.
	  */
	?heuristicWeight: Int,
 
	 /**
	  * Path to within (range) tiles of target tile. The default is to path to the tile that the target is on (0).
	  */
	?range: Int,
 
	 /**
	  * Cost for walking on plain positions. The default is 1.
	  */
	?plainCost: Int,
 
	 /**
	  * Cost for walking on swamp positions. The default is 5.
	  */
	?swampCost: Int,
 
	 /**
	  * CostMatrix (Container for custom navigation cost data)
	  */
	// ?costMatrix: CostMatrix
}

typedef MoveToOpts = {
	>FindPathOpts,
	/**
     * An array of the room's objects or RoomPosition objects which should be treated as obstacles during the search. This option cannot
     * be used when the new PathFinder is enabled (use costCallback option instead).
     */
	ignore: EitherType<Array<Dynamic>, Array<RoomPosition>>
}

typedef FindPathResult = {
    /**
	 * The path found as an array of objects containing x and y properties
	 */
	path: Array<PathStep>,
	
	/**
	 * Total number of operations performed before this path was calculated
	 */
	ops: Int,
	
	/**
	 * The total cost of the path as derived from `plainCost`, `swampCost`, and given `CostMatrix` instance
	 */
	cost: Int,
	
	/**
	 * If the pathfinder fails to find a complete path, this will be true
	 */
	incomplete: Bool
}

typedef PathStep = {
	x:Int,
	y:Int
}