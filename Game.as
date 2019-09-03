package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import fl.motion.easing.Circular;
	
	
	public class Game extends MovieClip {
		
		var o:Orc;
		var m:Moon;
		var c:Crate;
		
		public function Game() 
		{
			// constructor code
		
			m = new Moon();
			m.z = 1;
			randomMoonXY();
			addChild (m);
			
			o = new Orc();
			o.x = 275;
			o.y = 200;
			addChild (o);
			
			
			c = new Crate();
			c.x = 100;
			o.addChild(c);			
			
			
			o.addEventListener(MouseEvent.CLICK, orcClicked);
			addEventListener(Event.ENTER_FRAME, gameLoop);
			
			

		}
		public function randomMoonXY():void
		{
			var RngNumW:Number = Math.random()*stage.stageWidth;
			var RngNumH:Number = Math.random()*stage.stageHeight;
			//trace (RngNumW);
			//trace (RngNumH);
				
				
				
			m.x = RngNumW;
			m.y = RngNumH;
		}
		public function gameLoop(e:Event):void
		{
			o.rotation -= 10;
			if (o.rotation == 0)
			{
				trace("SPEEEN!");
				randomMoonXY();
			}
			
			dagd255.x = Math.random()*stage.stageWidth;
			dagd255.y = Math.random()*stage.stageHeight;
		}
		public function orcClicked(e:MouseEvent):void
		{
			
			trace("Zug zug");
			
		}		
			
	}
	
}
