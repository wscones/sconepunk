# README #

## What is sconepunk? ##

- sconepunk (current version 0.0.2) is a simple collection of utility classes that I frequently use for HaxePunk development.
- Currently, it's very bare-bones and mostly for personal use, but I hope to add more useful features that might benefit others :)

## What does sconepunk contain? ##



### sconepunk ###

`import sconepunk.*`

**TimedScene:** An extension of HaxePunk's Scene class that adds functionality for a fixedUpdate, as well as the logic for calling fixedUpdate in any TimedEntities

**TimedEntity:** An extension of Haxepunk's Entity class that adds a fixedUpdate function, which is called on every tick, rather than every frame


### sconepunk.components ###

`import sconepunk.components.*`

**Component:** Base class for all components. Extend this to create components


### sconepunk.entities ###

`import sconepunk.entities.*`

**ComponentEntity:** The core of the bare-bones component system
- addComponent(entity:ComponentEntity):Void
- getComponent<T:Component>(class:Class<T>):T
- getComponents<T:Component>(class:Class<T>):Array<T>


### sconepunk.math ###

`import sconepunk.math.*`

**SconeMath:** Most notable for having basic float and point approximation functions


### sconepunk.time ###

`import sconepunk.time.*`

**Time:** An attempt to emulate Unity's Time class


### sconepunk.utils ###

`import sconepunk.utils.*`

**Constants**

**JoystickWrapper**

**Structures**

**Types**
