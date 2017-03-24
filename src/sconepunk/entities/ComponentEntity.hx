package sconepunk.entities;

import Type;
import com.haxepunk.Entity;
import sconepunk.components.Component;

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
			_components[i].onStart();
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



	public function addComponent(component:Component):Void
	{
		component.onAdded();
		_components.push(component);
	}

	/*
	* Returns the first found component of type T if it exists, returns null if it doesn't.
	*/
	@:generic
	public function getComponent<T:Component>(classType:Class<T>):T
	{
		for (i in 0..._components.length)
		{
			if (Std.is(_components[i], classType))
			{
				return cast _components[i];
			}
		}

		return null;
	}

	/*
	* Returns an array containing all components of type T attached to this entity.
	*/
	@:generic
	public function getComponents<T:Component>(classType:Class<T>):Array<T>
	{
		var foundComponents:Array<T> = null;

		for (i in 0..._components.length)
		{
			if (Std.is(_components[i], classType))
			{
				if (foundComponents == null)
				{
					foundComponents = new Array<T>();
				}

				foundComponents.push(cast _components[i]);
			}
		}

		return foundComponents;
	}
}
