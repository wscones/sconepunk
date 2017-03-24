package sconelib.components;

class Component
{
    public var enabled:Bool;

    public function onAdded():Void
    {
        enabled = true;
    }

    public function update():Void
    {
    }
}
