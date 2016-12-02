package sconelib.time;

import com.haxepunk.HXP;

class Time 
{
	/**
	 * Time since the last tick.
	 */
	public static var time:Float = 0.0;
	
	/**
	 * How much the totalTime should be incremented every tick (in this case, 1 second).
	 */
	public static var incrementAmount:Float = 1.0;
	
	/**
	 * Total time since the game began (in seconds).
	 */
	public static var totalTime:Float = 0.0;
	
	/**
	 * Increment the totalTime by the incrementAmount.
	 */
	public static function increment()
	{
		totalTime += incrementAmount;
	}
}