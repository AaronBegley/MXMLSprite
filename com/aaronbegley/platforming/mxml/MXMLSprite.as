package com.aaronbegley.platforming.mxml
{
	import com.aaronbegley.platforming.mxml.interfaces.IMXMLSprite;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;

	[DefaultProperty("children")]
	
	public class MXMLSprite extends Sprite implements IMXMLSprite
	{

		//
		//  IMXMLObject implementation
		//
		
		[ArrayElementType("com.aaronbegley.platforming.mxml.interfaces.IMXMLSprite")]
		
		public function set children(value:Array):void
		{
			for each(var child:IMXMLSprite in value)
			{					
				addChild(child as DisplayObject);
			}			
		}
		
		public function get children():Array
		{
			return null;
		}
		
	}
}