package tools
{
	import components.Board;
	import components.Room;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author 
	 */
	public class WallTool 
	{
		private var _board:Board
		private var _enabled:Boolean;
		private var _pointList:Array = [];
		private var _firstPt:Point;
		private var _drawSprite:Sprite;
		
		public function WallTool(board:Board) {
			
			_board = board;
			_enabled = false;
			
			_drawSprite = new Sprite();
			
			
		}
		
		public function set enabled(val:Boolean):void {
			if (val != _enabled) {
				
				if (val) {
					_board.addEventListener(MouseEvent.CLICK, onClick);
					_board.addChild(_drawSprite);
					getPoints();
					drawPoints();
					
					
				} else {
					_board.removeEventListener(MouseEvent.CLICK, onClick);
					_board.removeChild(_drawSprite);
					_pointList = [];
					_board.renderRooms();
				}
				
				_enabled = val;
			}
		}
		
		private function drawPoints():void 
		{
			var len:int = _pointList.length;
			for (var i:int = 0; i < len; i++) {
				var pt:Point = _pointList[i] as Point;
				_drawSprite.graphics.beginFill(0x000000);
				_drawSprite.graphics.drawCircle(pt.x, pt.y, 3);
				_drawSprite.graphics.endFill();
				trace("tried to draw");
			}
		}
		
		private function getPoints():void 
		{
			var len:int = _board.rooms.length;
			for (var i:int = 0; i < len; i++) {
				_pointList = _pointList.concat((_board.rooms[i] as Room).getAllPoints());

			}
		}
		
		public function get enabled():Boolean 
		{
			return _enabled;
		}
		
		public function get board():Board 
		{
			return _board;
		}
		
		public function set board(value:Board):void 
		{
			_board = value;
		}
		
		private function onClick(e:MouseEvent):void 
		{
			/*if (_firstPt == null) {
				_firstPt = new Point(_board.mouseX, _board.mouseY);
			}
			_board.graphics.drawCircle(_board.*/
		}
	}
	
}