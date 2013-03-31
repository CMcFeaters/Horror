package personalities
{
	import personalities.Personality;
	
	/**
	 * ...
	 * @author 
	 */
	public class PerHero extends Personality 
	{
		public static var HERO_TYPE:String = "hero";
		public static var HERO_STRENGTH:Number = 100;
		public static var HERO_COLOR:Number = 0x0000FF;
		
		public function PerHero() {
			super(HERO_TYPE);
			_strength = HERO_STRENGTH;
			_color = HERO_COLOR;
		}
		
	}
	
}