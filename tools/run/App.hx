package;

import hxtool.Hxtool;
import abv.AM;

using abv.CT;

/**
 * App
 **/
class App extends AM{

	var colorSupport = true;
	
	public function new()
	{
		super(); 
 		var tool = new Hxtool(); 
trace(AM.args());
		if(AM.args().length > 0){
			tool.parse();
		}else{
			help().print();
			exit();
		}

	}// new()

	override function help(opt="")
	{
		var r = 'Usage:\n hxtool script.hxs';

		return r;
	}// help()


	public static function main() 
	{
		AM.verbose = 1;
 		var app = new App();
		CT.printLog();
	}// main()

}// App

