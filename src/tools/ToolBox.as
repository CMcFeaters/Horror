package tools
{
	import components.Board;
	
	/**
	 * ...
	 * @author 
	 */
	public class ToolBox 
	{
		private static var _wallTool:WallTool;
		
		
		
		public static function wallTool(board:Board):WallTool {
			
			if (_wallTool == null) {
				_wallTool = new WallTool(board);
			} else {
				_wallTool.enabled = false;
				_wallTool.board = board;
			}
			
			return _wallTool;
			
		}
		
		public static function disableAll():void {
			if (_wallTool) _wallTool.enabled = false;
		}
	}
	
}