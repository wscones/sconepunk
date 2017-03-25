# README #


## What is sconepunk? ##

- sconepunk (current version 0.0.3) is a simple collection of utility classes that I frequently use for HaxePunk development.
- Currently, it's very bare-bones and mostly for personal use, but I hope to add more useful features that might benefit others :)



## What does sconepunk contain? ##


### packages ###

    sconepunk
    sconepunk.components
    sconepunk.entities
    sconepunk.math
    sconepunk.time
    sconepunk.utils



### **sconepunk** ###

#### TimedScene ####
An extension of HaxePunk's Scene class that adds functionality for a fixedUpdate, as well as the logic for calling fixedUpdate in any TimedEntities

#### TimedEntity ####
An extension of Haxepunk's Entity class that adds a fixedUpdate function, which is called on every tick, rather than every frame



### **sconepunk.components** ###

#### Component ####
Base class for all components. Extend this to create components



### **sconepunk.entities** ###

#### ComponentEntity ####
The core of the bare-bones component system

How to use:

    // adding a component
    ComponentEntity player = new ComponentEntity();
    player.addComponent(new MovementComponent(player));

    // accessing a component
    player.getComponent(MovementComponent).enabled = false;



### **sconepunk.math** ###

#### SconeMath ####

    static public function ApproxFloat(float1:Float, float2:Float, margin:Float):Bool
    static public function ApproxPoint(point1_x:Float, point1_y:Float, point2_x:Float, point2_y:Float, margin:Float):Bool
    static public function CollideX(entity1_x:Float, entity2_left:Float, entity2_right:Float):Bool
    static public function CollideY(entity1_y:Float, entity2_top:Float, entity2_bottom:Float):Bool
    static public function GetAngleOffset(angle:Float, length:Float = 1):Vector2D



### **sconepunk.time** ###

#### Time ####
An attempt to emulate Unity's Time class



### **sconepunk.utils** ###

Random in-progress stuff mostly

#### Constants ####

#### JoystickWrapper ####

#### Structures ####

#### Types ####
