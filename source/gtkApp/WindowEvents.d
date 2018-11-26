/**
 * GtkD Template / WindowEvents
 */
//--MODULE--------------------------------
module gtkApp.WindowEvents;
//--GTKD----------------------------------
import gtk.Builder;
//--SELFI----------------------------------
import gtkApp.GMain;
//--MARS----------------------------------
import std.stdio;

class WindowEvents{
    void addEvents(ref Builder builder){
        //builder.addCallbackSymbol("onActive", &onActieWindow1);
    }
}
/*
extern(C) void onActieWindow1(){
    writeln("Active Windows");
}*/