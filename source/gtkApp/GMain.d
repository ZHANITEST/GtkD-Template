/**
 * GtkD Template / GMain
 */
//--MODULE--------------------------------
module gtkApp.GMain;
//--GTKD----------------------------------
import gtk.Builder;
import gtk.Button;
import gtk.Main;
import gtk.Widget;
import gtk.Window;
import gtk.Menu;
import gtk.MenuItem;
import gtk.MenuBar;
import gobject.Type;
//--SELFI----------------------------------
import gtkApp.ButtonEvents;
import gtkApp.WindowEvents;

class GMain{
    private Builder builder;
    private Window  window;
    
    this(string glade_file_path, string window_id, string[] args){
        Main.init(args);
        this.builder = new Builder();
        builder.addFromFile(glade_file_path);
        this.window = cast(Window)this.builder.getObject(window_id);
    }

    void loadEvent(){
        ButtonEvents be = new ButtonEvents();
        be.addEvents(this.builder);
        WindowEvents we = new WindowEvents();
        we.addEvents(this.builder);

        this.window.addOnHide( delegate void(Widget widget){ Main.quit(); } );
    }

    void show(){
        this.builder.connectSignals(null);
        this.window.showAll();
	    Main.run();
    }
}