package sconepunk.components;

import sconepunk.entities.ComponentEntity;

class Component
{
    public var enabled:Bool;
    public var entity:ComponentEntity;



    public function new(entity:ComponentEntity):Void
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
