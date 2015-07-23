package;

import abv.AM;

using abv.CR;
using abv.sys.ST;

/**
 * App
 **/
class App extends AM{

	public function new()
	{
		super(); 
 		var tool = new Hxtool(); 

		if(AM.args().length > 0){
//trace(AM.args());
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
//		CR.printLog();
	}// main()

}// App

