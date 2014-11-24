package;

import hxshell.Hxshell;
import abv.lib.Tools;

/**
 * hxshell
 **/
class App{

	var args:Array<String>;
	
	public function new()
	{
		var n = new Hxshell();
	}// new()

	public static function main() 
	{
 		var a = new App();
 		for(m in Tools.getLog())Sys.println(m);
	}// main()


}// App

