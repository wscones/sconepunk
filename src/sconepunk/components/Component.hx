package sconepunk.components;

import openfl.events.EventDispatcher;

import sconepunk.entities.ComponentEntity;


class Component extends EventDispatcher
{
    public var enabled:Bool;
    public var entity:ComponentEntity;



    public function new(entity:ComponentEntity):Void
    {
        super();
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
