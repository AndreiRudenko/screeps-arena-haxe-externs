package screeps;

import screeps.Constants;

@:native("ConstructionSite") extern class ConstructionSite extends GameObject<ConstructionSite> {
    /**
     * The current construction progress.
     */
	var progress: Int;
	 /**
	  * The total construction progress needed for the structure to be built.
	  */
	var progressTotal: Int;
 
	 /**
	  * One of the STRUCTURE_PROTOTYPES entries
	  */
	var structurePrototypeName: String;
 
	 // TODO: ConstructionSite object now has a new property structure that links to the corresponding Structure object.
	 // It will be the live object instance that will appear when the construction site is completed. You can check what structure is being constructed using the instanceof operator:
 
	 /**
	  * Whether it is your construction site.
	  */
	var my: Bool;
 
	function remove(): ConstructionSiteRemoveReturnCode;
}
