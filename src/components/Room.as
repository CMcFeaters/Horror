package components
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author 
	 */
	public class Room extends Sprite
	{
		private var _walls:Array = [];
		private var _doors:Array = [];
		private var _windows:Array = [];
		private var _props:Array = [];
		
		
		
		public function Room(wallList:Array) {
			_walls = wallList;
			
			
			
			render();
		}
		
		private function render():void 
		{
			this.graphics.lineStyle(0, 0, 1);
			var len:int = _walls.length;
			for (var i:int = 0; i < len; i++) {
				var wall:Wall = _walls[i] as Wall;
				
				this.graphics.moveTo(wall.ptA.x, wall.ptA.y);
				this.graphics.lineTo(wall.ptB.x, wall.ptB.y);
				
			}
			
		}
		
	}
	
}