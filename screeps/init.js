import * as ScreepsGameUtils from '/game/utils'
import { CostMatrix, arenaInfo } from '/game';
import { 
    ConstructionSite, Creep, Flag, GameObject, Resource, Source, 
} from '/game/prototypes';
import { 
    StructureContainer, StructureExtension, StructureRampart, StructureRoad, StructureSpawn, StructureTower, StructureWall
} from '/game/prototypes';
import { constants } from '/game';
var __onTick__;
export function loop() {
    __onTick__();
}