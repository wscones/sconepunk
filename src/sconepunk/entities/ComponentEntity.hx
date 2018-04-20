package sconepunk.entities;

import Type;
import haxepunk.Entity;
import openfl.events.Event;

import sconepunk.components.Component;
import sconepunk.events.EventManager;


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



	/**
	 * Broadcasts an event to this entity's components.
	 */
	public function broadcastEventLocal(event:Event):Void
	{
		for(i in 0..._components.length)
		{
			if (_components[i].enabled)
			{
				_components[i].dispatchEvent(event);
			}
		}
	}

	/**
	 * Broadcasts an event to every component in the scene.
	 */
	public function broadcastEventGlobal(event:Event):Void
	{
		EventManager.instance.broadcastEvent(event);
	}



	/**
	 * Adds a component to the entity and registers it with the EventManager.
	 */
	public function addComponent(component:Component):Void
	{
		component.onAdded();
		_components.push(component);
		EventManager.instance.registerComponent(component);
	}

	/**
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

	/**
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
