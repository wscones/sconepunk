package sconelib.entities;

import com.haxepunk.Entity;
import sconelib.components.Component;

class ComponentEntity extends Entity
{	
	private var _components:Array<Component>;
	
	public function fixedUpdate()
	{
	}
	
	@:generic
	public function findComponentOfType<T:Component>():T
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
	
	@:generic
	public function findAllComponentsOfType<T:Component>():T
	{
		var foundComponents:Array<Component> = null;
		
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