package characters
{
	import flash.display.Sprite;
	import flash.geom.Point;
	import personalities.Personality;
	
	/**
	 * ...
	 * @author 
	 */
	public class Mob extends Sprite
	{
		private var _heading:Number = 0;
		private var _equipment:Array = [];
		private var _personality:Personality;
		
		private static const PT_ANGLE:Number = Math.PI/4;
		private static const TRI_SIZE:Number = 10;
		
		
		public function Mob(personal:Personality) {
			
			_personality = personal;
			
			
			
			render();
		}
		
		private function render():void 
		{
			
			var xPos:Number = (Math.cos(_heading) * TRI_SIZE);
			var yPos:Number = (Math.sin(_heading) * TRI_SIZE);
			var pt1:Point = new Point(xPos, yPos);
			
			xPos = (Math.cos(_heading + Math.PI + PT_ANGLE) * TRI_SIZE);
			yPos = (Math.sin(_heading + Math.PI + PT_ANGLE) * TRI_SIZE);
			var pt2:Point = new Point(xPos, yPos);
			
			xPos = (Math.cos(_heading + Math.PI - PT_ANGLE) * TRI_SIZE);
			yPos = (Math.sin(_heading + Math.PI - PT_ANGLE) * TRI_SIZE);
			var pt3:Point = new Point(xPos, yPos);
			
			this.graphics.clear();
			this.graphics.beginFill(_personality.color);
			this.graphics.moveTo(pt1.x, pt1.y);
			this.graphics.lineTo(pt2.x, pt2.y);
			this.graphics.lineTo(pt3.x, pt3.y);
			this.graphics.lineTo(pt1.x, pt1.y);
		}
		
		public function get heading():Number 
		{
			return _heading;
		}
		
		public function set heading(value:Number):void 
		{
			_heading = value;
			render();
		}
		
		public function get equipment():Array 
		{
			return _equipment;
		}
		
		public function set equipment(value:Array):void 
		{
			_equipment = value;
		}
		
		public function get personality():Personality 
		{
			return _personality;
		}
		
		public function set personality(value:Personality):void 
		{
			_personality = value;
		}
		
	}
	
}