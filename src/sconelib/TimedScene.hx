package sconelib;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.Scene;
import sconelib.time.Time;

class TimedScene extends Scene
{
	private var _fixedUpdate:Array<TimedEntity>;
	
	public override function new()
	{
		super();
		
		_fixedUpdate = new Array<TimedEntity>();
		
		Time.time = 0.0;
	}
	
	public override function begin()
	{
		Time.time = 0.0;
	}
	
	public override function update()
	{
		Time.time += HXP.elapsed;
		
		if (Time.time >= 1.0)
		{
			fixedUpdate();
			
			Time.increment();
			Time.time--;
		}
		
		super.update();
	}
	
	public function fixedUpdate()
	{
		for (i in 0..._fixedUpdate.length) 
		{
			_fixedUpdate[i].fixedUpdate();
		}
	}
	
	private override function addUpdate(e:Entity)
	{
		super.addUpdate(e);
		
		if (Type.getClassName(Type.getSuperClass(Type.getClass(e))) == Type.getClassName(TimedEntity))
		{
			_fixedUpdate.push(cast(e, TimedEntity));
		}
	}
	
	private override function removeUpdate(e:Entity)
	{
		super.removeUpdate(e);
		
		if (Type.getClassName(Type.getSuperClass(Type.getClass(e))) == Type.getClassName(TimedEntity))
		{
			_fixedUpdate.remove(cast(e, TimedEntity));
		}
	}
}