package sconelib.time;

import com.haxepunk.HXP;

class Time
{
	/**
	 * Time since the last tick (in seconds).
	 */
	public static var deltaTime:Float = 0.0;

	/**
	 * The tick interval (in seconds).
	 */
	public static var fixedDeltaTime:Float = 1.0;

	/**
	 * Total time since the game began (in seconds). Updated every frame.
	 */
	public static var time:Float = 0.0;

	/**
	 * Total time since the game began (in seconds). Updated every tick.
	 */
	public static var fixedTime:Float = 0.0;
}
