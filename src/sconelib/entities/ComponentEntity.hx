package sconelib.entities;

import com.haxepunk.Entity;
import sconelib.components.Component;

class ComponentEntity extends TimedEntity
{
	private var _components:Array<Component>;



	override public function new()
	{
		super();

		_components = new Array<Component>();
	}

	override public function added()
	{
		super.added();

		for(i in 0..._components.length)
		{
			_components[i].onAdded();
		}
	}

	override public function update()
	{
		super.update();

		for(i in 0..._components.length)
		{
			if (_components[i].enabled)
			{
				_components[i].update();
			}
		}
	}



	/*
	* Returns the first found component of type T if it exists, returns null if it doesn't.
	*/
	@:generic
	public function getComponent<T:Component>():T
	{
		for (i in 0..._components.length)
		{
			if (Type.typeof(_components[i]) == T)
			{
				return _components[i];
			}
		}

		return null;
	}

	/*
	* Returns an array containing all components of type T attached to this entity.
	*/
	@:generic
	public function getComponents<T:Component>():Array<T>
	{
		var foundComponents:Array<T> = null;

		for (i in 0..._components.length)
		{
			if (Type.typeof(_components[i]) == T)
			{
				if (foundComponents == null)
				{
					foundComponents = new Array<Component>();
				}

				foundComponents.push(_components[i]);
			}
		}

		return foundComponents;
	}
}
