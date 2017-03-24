package sconepunk;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.Scene;
import sconepunk.time.Time;

class TimedScene extends Scene
{
	private var _fixedUpdate:Array<TimedEntity>;

	public override function new()
	{
		super();

		_fixedUpdate = new Array<TimedEntity>();

		Time.deltaTime = 0.0;
		Time.time = 0.0;
		Time.fixedTime = 0.0;
	}

	public override function begin()
	{
		Time.deltaTime = 0.0;
	}

	public override function update()
	{
		Time.deltaTime += HXP.elapsed;
		Time.time += HXP.elapsed;

		if (Time.deltaTime >= 1.0)
		{
			fixedUpdate();

			Time.fixedTime += 1.0;
			Time.deltaTime--;
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

		if (Std.is(e, TimedEntity))
		{
			_fixedUpdate.push(cast(e, TimedEntity));
		}
	}

	private override function removeUpdate(e:Entity)
	{
		super.removeUpdate(e);

		if (Std.is(e, TimedEntity))
		{
			_fixedUpdate.remove(cast(e, TimedEntity));
		}
	}
}
