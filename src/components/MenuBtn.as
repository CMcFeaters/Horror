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
		public static const BLUE:uint = 0x0000FF;
		public static const GREEN:uint = 0x00FF00;
		public static const BLACK:uint = 0x000000;
		public static const WHITE:uint = 0xFFFFFF;
		public static const LIGHT_BLUE:uint = 0x8370D8;
		public static const COOL_BLUE:uint = 0x3216B0;
		
		public static const BONUS_MARGIN:int = 12;
		
		private var _color:uint = LIGHT_BLUE;
		private var _label:TextField;
		private var _type:String;
		private var _enabled:Boolean;
		
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
			
			this.mouseChildren = false;
			
			_type = type;
			drawBtn();
			
			this.addEventListener(MouseEvent.CLICK, MenuFunctions.click);
			
			_enabled = false;
			enable();
		}
		
		private function onRoll(e:MouseEvent):void 
		{
			if (e.type == MouseEvent.ROLL_OVER) {
				color = COOL_BLUE;
				return;
			}
			if (e.type == MouseEvent.ROLL_OUT) {
				color = LIGHT_BLUE;
				return;
			}
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
		
		public function get type():String 
		{
			return _type;
		}
		
		public function get enabled():Boolean 
		{
			return _enabled;
		}
		
		public function set enabled(value:Boolean):void 
		{
			value ? enable() : disable();
		}
		
		public function enable():void {
			if(!_enabled){
				
				this.addEventListener(MouseEvent.ROLL_OVER, onRoll);
				this.addEventListener(MouseEvent.ROLL_OUT, onRoll);
				_enabled = true;
				color = LIGHT_BLUE;
			}
		}
		
		public function disable():void {
			if(_enabled){
				
				this.removeEventListener(MouseEvent.ROLL_OVER, onRoll);
				this.removeEventListener(MouseEvent.ROLL_OUT, onRoll);
				_enabled = false;
				color = COOL_BLUE;
			}
		}
		
	}
	
}