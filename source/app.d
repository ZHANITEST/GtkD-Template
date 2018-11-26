/**
 * GtkD Template / app
 */

import gtkApp.GMain;
void main(string[] args){
	GMain app = new GMain(
		  "./source/test.glade"
		, "window1"
		, args
	);
	app.loadEvent();
	app.show();
}