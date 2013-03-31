package personalities
{
	import personalities.Personality;
	
	/**
	 * ...
	 * @author 
	 */
	public class PerVillain extends Personality 
	{
		public static var VILLAIN_TYPE:String = "hero";
		public static var VILLAIN_STRENGTH:Number = 100;
		public static var VILLAIN_COLOR:Number = 0xFF0000;
		
		public function PerVillain() {
			super(VILLAIN_TYPE);
			_strength = VILLAIN_STRENGTH;
			_color = VILLAIN_COLOR
		}
		
	}
	
}