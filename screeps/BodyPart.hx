package screeps;

@:native("BodyPart") extern class BodyPart extends GameObject {
	/**
     * The type of the body part.
     */
    var type: BodyPartConstant;

     /**
      * The number of ticks until this item disappears.
      */
    var ticksToDecay: Int;
}
