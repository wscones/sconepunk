package sconepunk.utils;

import haxepunk.HXP;


class Directions
{
	static public var LEFT:String = "left";
	static public var RIGHT:String = "right";
	static public var UP:String = "up";
	static public var DOWN:String = "down";
	static public var NONE:String = "none";

	static public function getRandomDirection():String
	{
		return HXP.choose(LEFT, RIGHT, UP, DOWN, NONE);
	}
}

class Scenes
{
	static public var GAME:String = "game";
	static public var MENU:String = "menu";
	static public var CHARACTER_SELECT:String = "character_select";
}
