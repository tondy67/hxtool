package;

import abv.AM;
import abv.io.SH;

class App extends AM{

	public function new(id:String)
	{
		super(id); 
		AM.verbose = DEBUG;
	}// new()

	override function create()
	{
		var script = haxe.Resource.getString("script.hxs");
		if(script != ""){
			var lines = script.split("\n");
			var tmp = new Array<String>();
			for(l in lines){
				if(l.substr(0,1) != "#")tmp.push(l);
			}
			script = tmp.join("\n");  

			SH.args[0] = "script";
			for(i in 0...args.length)SH.args[i+1] = args[i]; 
			try SH.execute(script) catch(m:Dynamic){trace(m);}
		}
	}// create()
	
	public static function main() 
	{
 		var app = new App("hxtool");
	}// main()

}// App

