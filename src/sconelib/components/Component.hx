package sconelib.components;

class Component
{
    public var enabled:Bool;

    public function new():Void
    {
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
