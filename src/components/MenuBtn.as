package components
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author 
	 */
	public class MenuBtn extends Sprite 
	{
		
		public static const RED:uint = 0xFF0000;
		public static const BLUE :uint = 0x0000FF;
		public static const GREEN:uint = 0x00FF00;
		public static const BLACK:uint = 0x000000;
		public static const WHITE:uint = 0xFFFFFF;
		
		public static const BONUS_MARGIN:int = 12;
		
		private var _color:uint = BLUE;
		private var _label:TextField;
		private var _type:String;
		
		public function MenuBtn(type:String):void {
			this.buttonMode = true;
			_label = new TextField;
			this.addChild(_label);
			_label.x = 4;
			
			_label.text = type;
			
			var format:TextFormat = _label.getTextFormat();
			format.size = 20;
			_label.setTextFormat(format);
			
			_label.autoSize = TextFieldAutoSize.LEFT;
			_label.selectable = false;
			_label.mouseEnabled = false;
			
			_type = type;
			drawBtn();
			
			this.addEventListener(MouseEvent.CLICK, onClick);
			this.addEventListener(MouseEvent.ROLL_OVER, onRoll);
			this.addEventListener(MouseEvent.ROLL_OUT, onRoll);
		}
		
		private function onRoll(e:MouseEvent):void 
		{
			if (e.type == MouseEvent.ROLL_OVER) {
				color = RED;
				return;
			}
			if (e.type == MouseEvent.ROLL_OUT) {
				color = BLUE;
				return;
			}
		}
		
		private function onClick(e:MouseEvent):void 
		{
			
			MenuFunctions.click(_type);
		}
		
		private function drawBtn():void 
		{
			
			this.graphics.clear();
			this.graphics.beginFill(_color, 1);
			this.graphics.drawRoundRect(0, 0, _label.textWidth + BONUS_MARGIN, 30, 10, 10);
			this.graphics.endFill();
			
		}
		
		public function get color():uint 
		{
			return _color;
		}
		
		public function set color(value:uint):void 
		{
			_color = value;
			drawBtn();
		}
		
	}
	
}