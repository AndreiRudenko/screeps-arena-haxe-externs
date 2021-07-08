// package ;
import screeps.Screeps;
import screeps.Utils;
import screeps.GameObject;
import screeps.RoomPosition;
import screeps.Creep;
import screeps.Constants;
import screeps.Flag;
import screeps.OwnedStructure;
import screeps.StructureContainer;
import screeps.StructureSpawn;
import screeps.StructureTower;
import screeps.ArenaInfo;
import screeps.Source;

class Main {
	
	public static function main() {
		// var go:GameObject = null;

		// var json = go.toJSON();

		// var creep1:Creep = null;
		// var creep2:Creep = null;

		// import { prototypes, utils } from '/game';
		// import { RESOURCE_ENERGY, ERR_NOT_IN_RANGE } from '/game/constants';
		
		// export function loop() {
		// 	const creep = utils.getObjectsByPrototype(prototypes.Creep).find(i => i.my);
		// 	if(!creep.store[RESOURCE_ENERGY]) {
		// 		const container = utils.findClosestByPath(creep, utils.getObjectsByPrototype(prototypes.StructureContainer));
		// 		if(creep.withdraw(container, RESOURCE_ENERGY) == ERR_NOT_IN_RANGE) {
		// 			creep.moveTo(container);
		// 		}
		// 	} else {
		// 		const constructionSite = utils.getObjectsByPrototype(prototypes.ConstructionSite).find(i => i.my);
		// 		if(!constructionSite) {
		// 			utils.createConstructionSite(50,55, prototypes.StructureTower);
		// 		} else {
		// 			if(creep.build(constructionSite) == ERR_NOT_IN_RANGE) {
		// 				creep.moveTo(constructionSite);
		// 			}
		// 		}
		// 	}
		// }




		Screeps.onTick = function() {

			// var creep = utils.getObjectsByPrototype(prototypes.Creep).find(i => i.my);
			// var source = utils.getObjectsByPrototype(prototypes.Source)[0];
			// var spawn = utils.getObjectsByPrototype(prototypes.StructureSpawn).find(i => i.my);
		
			// if(creep.store.getFreeCapacity(constants.RESOURCE_ENERGY)) {
			// 	if(creep.harvest(source) == constants.ERR_NOT_IN_RANGE) {
			// 		creep.moveTo(source);
			// 	}
			// } else {
			// 	if(creep.transfer(spawn, constants.RESOURCE_ENERGY) == constants.ERR_NOT_IN_RANGE) {
			// 		creep.moveTo(spawn);
			// 	}
			// }

			// var source = Utils.getObjectsByPrototype(Source)[0];

			var creeps = Utils.getObjectsByPrototype(Creep);
			var creep:Creep = null;
			for (c in creeps) {
				if (c.my) {
					creep = c;
				}
			}

			// var spawns = Utils.getObjectsByPrototype(StructureSpawn);
			// var spawn:StructureSpawn = null;
			// for (s in spawns) {
			// 	if (s.my) {
			// 		spawn = s;
			// 	}
			// }

			if(creep.store.getFreeCapacity(RESOURCE_ENERGY) != 0) {
				if(creep.harvest(source) == ERR_NOT_IN_RANGE) {
					creep.moveTo(source);
				}
			} else {
				if(creep.transfer(spawn, RESOURCE_ENERGY) == ERR_NOT_IN_RANGE) {
					creep.moveTo(spawn);
				}
			}


			// var flags = Utils.getObjectsByPrototype(Flag);

			// if (creep1 == null) {
			// 	creep1 = mySpawn.spawnCreep([MOVE]).object;
			// } else {
			// 	creep1.moveTo(flags[0]);
			// 	if (creep2 == null) {
			// 		creep2 = mySpawn.spawnCreep([MOVE]).object;
			// 	} else {
			// 		creep2.moveTo(flags[1]);
			// 	}
			// }

			// // var tc = TowerConstants.TOWER_CAPACITY;
			// trace(STRUCTURE_CONTAINER_CONSTRUCTION_COST);

			// var c:Creep = null;
			// var r:RoomPosition = c;

			// var creeps = Utils.getObjectsByPrototype(Creep);
			// var id = flags[0].id;

			// var ds:Creep = Utils.getObjectById(id);
			
			// // var asd = Utils.getObjectById(id);

			// var myCreeps:Array<Creep> = [];

			// for (c in creeps) {
			// 	if (c.my) {
			// 		myCreeps.push(c);
			// 	}
			// }

			// for (c in myCreeps) {
			// 	var f = c.findClosestByPath(flags);
			// 	c.moveTo(f);
			// }

		};
	}
	
}