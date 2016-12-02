package sconelib;

import com.haxepunk.HXP;
import com.haxepunk.Scene;
import sconelib.utils.Time;

class TimedScene extends Scene
{
	public override function new()
	{
		super();
		
		Time.time = 0;
	}
	
	public override function begin()
	{
		Time.time = 0;
	}
	
	public override function update()
	{
		Time.time++;
		
		if (Time.time >= 1)
		{
			super.update();
			Time.increment();
			
			fixedUpdate();
			
			Time.time--;
		}
	}
	
	public function fixedUpdate()
	{
	}
}