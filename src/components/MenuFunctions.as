package components
{
	import flash.events.MouseEvent;
	import tools.ToolBox;
	
	/**
	 * ...
	 * @author 
	 */
	public class MenuFunctions 
	{
		private static var _main:Main;
		
		public static function registerMain(main:Main):void {
			_main = main;
		}
		
		public static function click(e:MouseEvent):void {
			var btn:MenuBtn = e.target as MenuBtn;
			var type:String = btn.type;
			
			
			if (btn.enabled) {
				_main.enableAllBtns();
				btn.enabled = false;
			} else {
				btn.enabled = true;
			}
			
			ToolBox.disableAll();
			
			trace("click: "+ type);
			switch(type) {
				
				case BtnList.WALL:
					//trace("that's a wall");
					if (!btn.enabled){
						ToolBox.wallTool(_main.board).enabled = true
					}
					return;
					
				case BtnList.DOOR:
					
					return;
					
				case BtnList.WINDOW:
					
					return;
					
				case BtnList.PROP:
					
					return;
					
				case BtnList.PLAY:
					
					return;
					
				case BtnList.PAUSE:
					
					return;
					
				case BtnList.REWIND:
					
					return;
					
				case BtnList.SAVE:
					
					return;
					
				case BtnList.LOAD:
					
					return;
				
				
				
			}
			
			
			
			
		}
	}
	
}