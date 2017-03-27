package sconepunk.events;

import openfl.events.Event;

import sconepunk.components.Component;


class EventManager
{
    static private var _instance:EventManager;
    private var _registeredComponents:Array<Component>;



    public function new()
    {
        this._registeredComponents = new Array<Component>();
    }

    public function registerComponent(component:Component):Void
    {
        _registeredComponents.push(component);
    }

    public function broadcastEvent(event:Event):Void
    {
        for(i in 0..._registeredComponents.length)
        {
            if (_registeredComponents[i].hasEventListener(event.type))
            {
                _registeredComponents[i].dispatchEvent(event);
            }
        }
    }



    static public var instance(get, null):EventManager;
    static public function get_instance():EventManager
    {
        if (_instance == null)
        {
            _instance = new EventManager();
        }

        return _instance;
    }
}
