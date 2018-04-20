package sconepunk.math;

import haxepunk.HXP;
import openfl.geom.Point;

import sconepunk.utils.Structures;


class SconeMath
{
	/**
	 * Check if one float is approximately equal to another, by the desired margin.
	 * @param	float1		The first float value.
	 * @param	float2		The second float value.
	 * @param	margin		Margin of how close the floats need to be to be considered "approximately equal."
	 * @return	True if they're approximately equal, false if not.
	 */
	static public function ApproxFloat(float1:Float, float2:Float, margin:Float):Bool
	{
		return (float1 > float2 - margin) && (float1 < float2 + margin);
	}

	/**
	 * Check if the elements in one point are approximately equal to the elements in another, by the desired margin.
	 * @param	point1_x	X value of the first point.
	 * @param	point1_y	Y value of the first point.
	 * @param	point2_x	X value of the second point.
	 * @param	point2_y	Y value of the second point.
	 * @param	margin		Margin of how close the elements of the points need to be to be considered "approximately equal."
	 * @return	True if they're approximately equal, false if not.
	 */
	static public function ApproxPoint(point1_x:Float, point1_y:Float, point2_x:Float, point2_y:Float, margin:Float):Bool
	{
		return (point1_x > point2_x - margin) && (point1_x < point2_x + margin) && (point1_y > point2_y - margin) && (point1_y < point2_y + margin);
	}

	/**
	 * A very simple collision check for the x axis that doesn't pass around entities at all, just checks hitboxes.
	 * @param	entity1_x		The first entity's x value.
	 * @param	entity2_left	The leftmost position of the second entity's hitbox.
	 * @param	entity2_right	The rightmost position of the second entity's hitbox.
	 * @return	True if they're colliding on the x axis, false if they're not.
	 */
	static public function CollideX(entity1_x:Float, entity2_left:Float, entity2_right:Float):Bool
	{
		return (entity1_x > entity2_left) && (entity1_x < entity2_right);
	}

	/**
	 *  A very simple collision check for the y axis that doesn't pass around entities at all, just checks hitboxes.
	 * @param	entity1_y		The first entity's y value.
	 * @param	entity2_top		The top of the second entity's hitbox.
	 * @param	entity2_bottom	The bottom of the second entity's hitbox.
	 * @return	True if they're colliding on the y axis, false if they're not.
	 */
	static public function CollideY(entity1_y:Float, entity2_top:Float, entity2_bottom:Float):Bool
	{
		return (entity1_y > entity2_top) && (entity1_y < entity2_bottom);
	}

	/**
	 * Just like HXP's angleXY function, but this just gives you the offset vector itself instead of directly applying it.
	 * @param	angle		The angle of the vector, in degrees.
	 * @param	length		The desired length of the return vector.
	 * @return	The offset vector.
	 */
	static public function GetAngleOffset(angle:Float, length:Float = 1):Vector2D
	{
		var offset:Vector2D = { x:0, y:0 };

		angle *= (Math.PI / -180);

		offset.x = Math.cos(angle) * length;
		offset.y = Math.sin(angle) * length;

		return offset;
	}
}
