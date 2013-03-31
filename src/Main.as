package 
{
	import components.Board;
	import components.BtnList;
	import components.MenuBtn;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		private static const MENU_BTN_MARGIN:int = 10;
		
		private var _menuBtns:Array = [];
		private var _board:Board;
		
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			makeBoard();
			makeBtns();
			
			
			
		}
		
		private function makeBoard():void 
		{
			_board = new Board();
			this.addChild(_board);
		}
		
		private function makeBtns():void 
		{
			var len:int = BtnList.btnArray.length;
			
			var xPos:int = 0;
			
			for (var i:int = 0; i < len; i++) {
				var type:String = BtnList.btnArray[i];
				var btn:MenuBtn = new MenuBtn(type);
				
				this.addChild(btn);
				btn.x = xPos;
				xPos += btn.width + MENU_BTN_MARGIN;
				
				
				_menuBtns.push(btn);
			}
			
		}
		
		
		
		
		
	}
	
}