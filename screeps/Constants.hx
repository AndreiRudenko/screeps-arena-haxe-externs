package screeps;

enum abstract ResourceConstant(String) {
	var RESOURCE_ENERGY = "energy";
	var RESOURCE_SCORE = "score";
	var RESOURCE_SCORE_X = "score_x";
	var RESOURCE_SCORE_Y = "score_y";
	var RESOURCE_SCORE_Z = "score_z";
}

enum abstract EffectConstant(String) {
	var EFFECT_FREEZE = "freeze";
	var EFFECT_HEAL = "heal";
	var EFFECT_DAMAGE = "damage";
}

enum abstract BodyPartConstant(String) {
	var MOVE = "move";
	var WORK = "work";
	var CARRY = "carry";
	var ATTACK = "attack";
	var RANGED_ATTACK = "ranged_attack";
	var TOUGH = "tough";
	var HEAL = "heal";
	var CLAIM = "claim";
}

enum abstract DirectionConstant(Int) {
	var TOP = 1;
	var TOP_RIGHT = 2;
	var RIGHT = 3;
	var BOTTOM_RIGHT = 4;
	var BOTTOM = 5;
	var BOTTOM_LEFT = 6;
	var LEFT = 7;
	var TOP_LEFT = 8;
}

enum abstract ScreepsReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_NO_PATH = -2;
	var ERR_NAME_EXISTS = -3;
	var ERR_BUSY = -4;
	var ERR_NOT_FOUND = -5;
	var ERR_NOT_ENOUGH_RESOURCES = -6;
	var ERR_NOT_ENOUGH_ENERGY = -6;
	var ERR_INVALID_TARGET = -7;
	var ERR_FULL = -8;
	var ERR_NOT_IN_RANGE = -9;
	var ERR_INVALID_ARGS = -10;
	var ERR_TIRED = -11;
	var ERR_NO_BODYPART = -12;
	var ERR_NOT_ENOUGH_EXTENSIONS = -6;
	var ERR_RCL_NOT_ENOUGH = -14;
	var ERR_GCL_NOT_ENOUGH = -15;
}

enum abstract CreepActionReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_BUSY = -4;
	var ERR_INVALID_TARGET = -7;
	var ERR_NOT_IN_RANGE = -9;
	var ERR_NO_BODYPART = -12;
	var ERR_TIRED = -11;
}

enum abstract CreepMoveReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_BUSY = -4;
	var ERR_TIRED = -11;
	var ERR_NO_BODYPART = -12;
}

enum abstract CreepMoveToReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_BUSY = -4;
	var ERR_TIRED = -11;
	var ERR_NO_BODYPART = -12;
	var ERR_NO_PATH = -2;
	var ERR_INVALID_TARGET = -7;
}

enum abstract CreepRangedMassAttackReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_BUSY = -4;
	var ERR_NO_BODYPART = -12;
}

enum abstract CreepPullReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_BUSY = -4;
	var ERR_INVALID_TARGET = -7;
	var ERR_NOT_IN_RANGE = -9;
	var ERR_NO_BODYPART = -12;
}

enum abstract CreepDropReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_BUSY = -4;
	var ERR_NOT_ENOUGH_RESOURCES = -6;
}

enum abstract CreepPickupReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_BUSY = -4;
	var ERR_INVALID_TARGET = -7;
	var ERR_NOT_IN_RANGE = -9;
	var ERR_NO_BODYPART = -12;
	var ERR_TIRED = -11;

	var ERR_FULL = -8;
}

enum abstract CreepHarvestReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_BUSY = -4;
	var ERR_INVALID_TARGET = -7;
	var ERR_NOT_IN_RANGE = -9;
	var ERR_NO_BODYPART = -12;
	var ERR_TIRED = -11;

	var ERR_NOT_FOUND = -5;
	var ERR_NOT_ENOUGH_RESOURCES = -6;
}

enum abstract CreepBuildReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
	var ERR_BUSY = -4;
	var ERR_INVALID_TARGET = -7;
	var ERR_NOT_IN_RANGE = -9;
	var ERR_NO_BODYPART = -12;
	var ERR_TIRED = -11;

	var ERR_NOT_ENOUGH_RESOURCES = -6;
}

enum abstract ConstructionSiteRemoveReturnCode(Int) {
	var OK = 0;
	var ERR_NOT_OWNER = -1;
}

enum abstract SpawnCreepErrorReturnCode(Int) {
	var ERR_BUSY = -4;
	var ERR_INVALID_ARGS = -10;
	var ERR_NOT_ENOUGH_ENERGY = -6;
}

enum abstract TerrainConstant(Int) {
	var TERRAIN_SWAMP = 2;
	var TERRAIN_WALL = 1;
	var TERRAIN_OTHER = 0;
}

enum abstract StructureConstant(String) {
	var STRUCTURE_TOWER = "tower";
	var STRUCTURE_EXTENSION = "extension";
	var STRUCTURE_WALL = "wall";
	var STRUCTURE_CONTAINER = "container";
	var STRUCTURE_RAMPART = "rampart";
	var STRUCTURE_SPAWN = "spawn";
	var STRUCTURE_ROAD = "road";
}

enum abstract CreateConstructionSiteReturnCode(Int) {
	var ERR_INVALID_ARGS = -10;
	var ERR_INVALID_TARGET = -7;
	var ERR_FULL = -8;
}

@:native("constants") extern enum abstract TowerConstants(Int) {
	var TOWER_CAPACITY;
	var TOWER_ENERGY_COST;
	var TOWER_FALLOFF;
	var TOWER_FALLOFF_RANGE;
	var TOWER_HITS;
	var TOWER_OPTIMAL_RANGE;
	var TOWER_POWER_ATTACK;
	var TOWER_POWER_HEAL;
	var TOWER_POWER_REPAIR;
	var TOWER_RANGE;
	var TOWER_COOLDOWN;
}

@:native("constants") extern enum abstract RoadConstants(Int) {
	var ROAD_WEAROUT;
	var ROAD_HITS;
}

@:native("constants") extern enum abstract CreepConstants(Int) {
	var CARRY_CAPACITY;
	var CREEP_SPAWN_TIME;
}

enum abstract ObstacleObjectTypes(String) {
	var CREEP = "creep";
	var STRUCTURE_TOWER = "tower";
	var STRUCTURE_WALL = "wall";
	var STRUCTURE_SPAWN = "spawn";
	var STRUCTURE_EXTENSION = "extension";
}

@:native("constants.BODYPART_COST") extern enum abstract BodyPartCost(Int) {
	@:native("move") var MOVE_BODYPART_COST;
	@:native("work") var WORK_BODYPART_COST;
	@:native("attack") var ATTACK_BODYPART_COST;
	@:native("carry") var CARRY_BODYPART_COST;
	@:native("heal") var HEAL_BODYPART_COST;
	@:native("ranged_attack") var RANGED_ATTACK_BODYPART_COST;
	@:native("tough") var TOUGH_BODYPART_COST;
}

@:native("constants") extern enum abstract BodyPartOtherConstants(Int) {
	var BODYPART_HITS;
}

@:native("constants.CONSTRUCTION_COST") extern enum abstract ConstructionCost(Int) {
	@:native("StructureTower") var STRUCTURE_TOWER_CONSTRUCTION_COST;
	@:native("StructureExtension") var STRUCTURE_EXTENSION_CONSTRUCTION_COST;
	@:native("StructureRoad") var STRUCTURE_ROAD_CONSTRUCTION_COST;
	@:native("StructureContainer") var STRUCTURE_CONTAINER_CONSTRUCTION_COST;
	@:native("StructureWall") var STRUCTURE_WALL_CONSTRUCTION_COST;
	@:native("StructureRampart") var STRUCTURE_RAMPART_CONSTRUCTION_COST;
	@:native("StructureSpawn") var STRUCTURE_SPAWN_CONSTRUCTION_COST;
}

@:native("constants") extern enum abstract RampartConstants(Int) {
	var RAMPART_HITS;
	var RAMPART_HITS_MAX;
}

@:native("constants") extern enum abstract WallConstants(Int) {
	var WALL_HITS;
	var WALL_HITS_MAX;
}

@:native("constants") extern enum abstract SpawnConstants(Int) {
	var SPAWN_ENERGY_CAPACITY;
	var SPAWN_HITS;
}

@:native("constants") extern enum abstract OtherConstants(Int) {
	var DISMANTLE_COST;
	var DISMANTLE_POWER;
	var HARVEST_POWER;
	var MAX_CREEP_SIZE;

	var REPAIR_COST;
	var REPAIR_POWER;

	var RESOURCE_DECAY;
	var SOURCE_ENERGY_REGEN;

	var BUILD_POWER;

	var CONSTRUCTION_COST_ROAD_SWAMP_RATIO;
	var CONSTRUCTION_COST_ROAD_WALL_RATIO;
	var CONTAINER_CAPACITY;
	var CONTAINER_HITS;

	var EXTENSION_ENERGY_CAPACITY;
	var EXTENSION_HITS;
	var MAX_CONSTRUCTION_SITES;
}


typedef AnyCreep = Creep;