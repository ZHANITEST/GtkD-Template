/**
 * GtkD Template / ButtonEvents
 */
//--MODULE--------------------------------
module gtkApp.ButtonEvents;
//--GTKD----------------------------------
import gtk.Builder;
//--SELFI----------------------------------
import gtkApp.GMain;
//--MARS----------------------------------
import std.stdio;

class ButtonEvents{
    void addEvents(ref Builder builder){
        builder.addCallbackSymbol("on_Button1_clicked", &on_Button1_clicked);
        builder.addCallbackSymbol("on_Button2_clicked", &on_Button2_clicked);
    }
}
extern(C) void on_Button1_clicked(){
    writeln("on_Button1_clicked");
}
extern(C) void on_Button2_clicked(){
    writeln("on_Button2_clicked");
}