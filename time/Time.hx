package time.sconelib;

import com.haxepunk.HXP;

class Time 
{
	public static var time:Int = 0;
	
	public static var incrementAmount:Float = 1.0 / HXP.frameRate;
	public static var totalTime:Float = 0.0;
	
	public static function increment()
	{
		totalTime += incrementAmount;
	}
}