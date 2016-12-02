package utils.sconelib;
import com.haxepunk.utils.Input;

class JoystickWrapper 
{	
	public static var axisReset:Bool = true;
	
	/**
	 * If the joystick button was pressed this frame.
	 * Omit argument to check for any button.
	 * @param  joystickNum The number of the joystick to check.
	 * @param  button The button index to check.
	 */
	public static function pressed(joystickNum:Int, button:Int):Bool
	{
		return Input.joystick(joystickNum).pressed(button);
	}	
	
	/**
	 * If the joystick button is held down.
	 * Omit argument to check for any button.
	 * @param  joystickNum The number of the joystick to check.
	 * @param  button The button index to check.
	 */
	public static function check(joystickNum:Int, button:Int):Bool
	{
		return Input.joystick(joystickNum).pressed(button);
	}
	
	public static function getAxisPressed(joystickNum:Int, axis:Int, positiveDirection:Bool):Bool
	{
		if (axisReset)
		{
			if ((positiveDirection && Input.joystick(joystickNum).getAxis(axis) > 0.5) || (!positiveDirection && Input.joystick(joystickNum).getAxis(axis) < -0.5))
			{
				axisReset = false;
				return true;
			}	
		}
		else if (Input.joystick(joystickNum).getAxis(axis) < 0.5 && Input.joystick(joystickNum).getAxis(axis) > -0.5)
		{
			axisReset = true;
		}
		
		return false;
	}
}