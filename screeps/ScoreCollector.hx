package screeps;

@:native("ScoreCollector") extern class ScoreCollector extends GameObject<ScoreCollector> {
    /**
     * The type of the resource this collector accepts.
     */
    var resourceType: String;
     /**
      * Whether you have control over this collector.
      */
    var my: Bool;
     /**
      * Current collected score number of the owner player.
      */
    var score: Int;
     /**
      * Total number of score needed to win instantly.
      */
    var scoreTotal: Int;
}
