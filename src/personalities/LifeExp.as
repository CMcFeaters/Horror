package personalities
{
	import adobe.utils.ProductManager;
	import characters.Mob;
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author 
	 */
	public class LifeExp 
	{
		
		public static function makeHero():Mob {
			var perHero:PerHero = new PerHero();
			var hero:Mob = new Mob(perHero);
			return hero;
		}
		
		public static function makeVillain():Mob {
			var perVillain:PerVillain = new PerVillain();
			var villain:Mob = new Mob(perVillain );
			return villain;
		}
		
	}
	
}