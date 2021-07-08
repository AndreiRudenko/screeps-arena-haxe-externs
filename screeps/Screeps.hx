package screeps;
@:native("") extern class Screeps {

	// static var undefined(get, never):Dynamic;
	// @:noCompletion static inline function get_undefined():Dynamic {
	// 	return js.Syntax.code("undefined");
	// }

	static inline function log(v:Dynamic):Dynamic {
		return js.Syntax.code("console.log({0})", v);
	}
    
	static var onTick(never, set):Dynamic;
	@:noCompletion static inline function set_onTick(v:Dynamic):Dynamic {
		return js.Syntax.code("__onTick__ = {0}", v);
	}
}