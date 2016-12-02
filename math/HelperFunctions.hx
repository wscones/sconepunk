package math.sconelib;

import com.haxepunk.HXP;
import openfl.geom.Point;

import utils.sconelib.Structures;

class HelperFunctions
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
	
	static public function CollideX(entity1_x:Float, entity2_left:Float, entity2_right:Float):Bool
	{
		return (entity1_x > entity2_left) && (entity1_x < entity2_right);
	}
	
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
	
	static public function CastToInt(value:Float):Int
	{
		return Std.int(value);
	}
}