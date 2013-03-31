package components
{
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author 
	 */
	public class Wall 
	{
		private var _ptA:Point;
		private var _ptB:Point;
		
		public function Wall(ptA:Point, ptB:Point) {
			_ptA = ptA;
			_ptB = ptB;
		}
		
		public function get ptA():Point 
		{
			return _ptA;
		}
		
		public function set ptA(value:Point):void 
		{
			_ptA = value;
		}
		
		public function get ptB():Point 
		{
			return _ptB;
		}
		
		public function set ptB(value:Point):void 
		{
			_ptB = value;
		}
		
		
	}
	
}