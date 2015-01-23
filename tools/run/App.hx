package;

import hxtool.Hxtool;
import abv.AM;

using abv.CR;
using abv.sys.ST;

/**
 * App
 **/
class App extends AM{

	var colors = true;
	
	public function new()
	{
		super(); 
 		var tool = new Hxtool(); 
//trace(AM.args());
		if(AM.args().length > 0){
			tool.parse();
		}else{
			CR.print(help(),INFO);
			AM.exit();
		}

	}// new()

	override function help(opt="")
	{
		var r = 'Usage:\n hxtool script.hxs';

		return r;
	}// help()


	public static function main() 
	{
		AM.verbose = INFO;
 		var app = new App();
		CR.printLog();
	}// main()

}// App

