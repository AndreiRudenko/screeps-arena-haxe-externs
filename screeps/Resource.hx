package screeps;

@:native("Resource") extern class Resource extends GameObject<Resource> {
    var amount: Int;
    var resourceType: String;
}
