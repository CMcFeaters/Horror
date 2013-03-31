package personalities
{
	
	/**
	 * ...
	 * @author 
	 */
	public class Personality
	{
		protected var _strength:Number;
		protected var _type:String;
		protected var _color:Number;
		
		public function Personality(type:String) {
			_type = type;
		}
		
		
		
		
		
		
		
		
		
		
		public function get strength():Number 
		{
			return _strength;
		}
		
		public function set strength(value:Number):void 
		{
			_strength = value;
		}
		
		public function get color():Number 
		{
			return _color;
		}
		
		public function set color(value:Number):void 
		{
			_color = value;
		}
	}
	
}