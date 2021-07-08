package screeps;
@:native("arenaInfo") extern class ArenaInfo {

	static var name:String;
	static var level:Int;
	static var season:String;

	static var ticksLimit:Int;
	static var cpuTimeLimit:Int;
	static var cpuTimeLimitFirstTick:Int;
}