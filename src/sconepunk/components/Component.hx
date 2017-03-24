package sconepunk.components;

import com.haxepunk.Entity;

class Component
{
    public var enabled:Bool;
    public var entity:Entity;



    public function new(entity:Entity):Void
    {
        this.entity = entity;
    }

    public function onStart():Void
    {
        enabled = true;
    }

    public function onAdded():Void
    {
        enabled = true;
    }

    public function update():Void
    {
    }
}
