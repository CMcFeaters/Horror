package components
{
	
	/**
	 * ...
	 * @author 
	 */
	public class WallObj 
	{
		
		protected var _roomA:Room;
		protected var _roomB:Room;
		protected var _wall:Wall;
		
		//a value between 0 and 1 specifying where on the wall it lies between ptA and ptB on its wall
		protected var _position:Number;
		
		protected var _open:Boolean;
		protected var _locked:Boolean;
		
		//0 strength means it's gone/useless, goes as high as we like.
		protected var _strength:Number;
		
		public function WallObj(roomA:Room, roomB:Room, wall:Wall, position:Number = .5) {
			_roomA = roomA;
			_roomB = roomB;
			_position = position;
			_wall = wall;
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		public function get roomA():Room 
		{
			return _roomA;
		}
		
		public function set roomA(value:Room):void 
		{
			_roomA = value;
		}
		
		public function get wall():Wall 
		{
			return _wall;
		}
		
		public function set wall(value:Wall):void 
		{
			_wall = value;
		}
		
		public function get position():Number 
		{
			return _position;
		}
		
		public function set position(value:Number):void 
		{
			_position = value;
		}
		
		public function get open():Boolean 
		{
			return _open;
		}
		
		public function set open(value:Boolean):void 
		{
			_open = value;
		}
		
		public function get locked():Boolean 
		{
			return _locked;
		}
		
		public function set locked(value:Boolean):void 
		{
			_locked = value;
		}
		
		public function get strength():Number 
		{
			return _strength;
		}
		
		public function set strength(value:Number):void 
		{
			_strength = value;
		}
	}
	
}