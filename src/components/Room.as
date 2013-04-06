package components
{
	import flash.display.Sprite;
	import flash.geom.Point;
	
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
		
		public function render():void 
		{
			this.graphics.lineStyle(0, 0, 1);
			var len:int = _walls.length;
			for (var i:int = 0; i < len; i++) {
				var wall:Wall = _walls[i] as Wall;
				
				this.graphics.moveTo(wall.ptA.x, wall.ptA.y);
				this.graphics.lineTo(wall.ptB.x, wall.ptB.y);
				
			}
			
		}
		
		public function getAllPoints():Array {
			var ptArr:Array = [];
			var len:int = _walls.length;
			for (var i:int = 0; i < len; i++) {
				var wall:Wall = _walls[i] as Wall;
				if (!ptInArray(ptArr, wall.ptA)) {
					ptArr.push(wall.ptA);
					//trace(wall.ptA.toString());
				}
				
				if (!ptInArray(ptArr, wall.ptB)) {
					ptArr.push(wall.ptB);
					//trace(wall.ptB.toString());
				}
				
			}
			
			return(ptArr);
		}
		
		private function ptInArray(arr:Array, pt:Point):Boolean {
			var len:int = arr.length;
			for (var i:int = 0; i < len; i++) {
				if ((arr[i] as Point).equals(pt)) {
					return true;
				}
			}
			return false;
		}
		
	}
	
}