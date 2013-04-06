package components
{
	import characters.Mob;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.sampler.NewObjectSample;
	import personalities.LifeExp;
	
	/**
	 * ...
	 * @author 
	 */
	public class Board extends Sprite
	{
		private var _rooms:Array = [];
		private var _mobs:Array = [];
		
		public function Board() {
			makeBg();
			makeWalls();
			makeMobs();
			this.mouseChildren = false;
		}
		
		private function makeBg():void 
		{
			this.graphics.beginFill(0xFFFFFF,0);
			this.graphics.drawRect(0, 0, 800, 600);
		}
		
		
		
		private function makeWalls():void 
		{
			var wall1:Wall = new Wall(new Point(50, 50), new Point(150, 50));
			var wall2:Wall = new Wall(new Point(150, 50), new Point(150, 150));
			var wall3:Wall = new Wall(new Point(150, 150), new Point(50, 150));
			var wall4:Wall = new Wall(new Point(50, 150), new Point(50, 50));
			
			var wall5:Wall = new Wall(new Point(100, 50), new Point(100, 100));
			var wall6:Wall = new Wall(new Point(100, 100), new Point(50, 100));
			
			var wallList:Array = [wall1, wall2, wall3, wall4, wall5, wall6];
			
			var room:Room = new Room(wallList);
			
			_rooms.push(room);
			
			this.addChild(room);
			
		}
		
		private function makeMobs():void 
		{
			var hero:Mob = LifeExp.makeHero();
			var villain:Mob = LifeExp.makeVillain();
			
			this.addChild(hero);
			this.addChild(villain);
			
			hero.x = 300;
			hero.y = 300;
			villain.x = 400;
			villain.y = 300;
			
			villain.heading = Math.PI;
			
			
			
			
			_mobs.push(hero);
			_mobs.push(villain);
			
			this.addEventListener(MouseEvent.MOUSE_MOVE, onMove);
		}
		
		private function onMove(e:MouseEvent):void 
		{
			var vil:Mob = _mobs[1];
			var rise:Number = (this.mouseY - vil.y);
			var run:Number = (this.mouseX - vil.x);
			if(run != 0){
				var rad:Number = Math.atan( rise / run );
				if (run < 0) {rad = rad + Math.PI}
				vil.heading = rad;
			}
			var hero:Mob = _mobs[0];
			rise = (this.mouseY - hero.y);
			run = (this.mouseX - hero.x);
			if(run != 0){
				rad = Math.atan( rise / run );
				if (run < 0) {rad = rad + Math.PI}
				hero.heading = rad;
			}
			
		}
		
		public function get rooms():Array 
		{
			return _rooms;
		}
		
		public function get mobs():Array 
		{
			return _mobs;
		}
		
		public function renderRooms():void {
			
			var len:int = _rooms.length;
			for (var i:int = 0; i < len; i++) {
				
				(_rooms[i] as Room).render();
				
			}
			
		}
	}
	
}