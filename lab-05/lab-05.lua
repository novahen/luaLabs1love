#!/usr/bin/lua5.3

lgi = require 'lgi'

gtk = lgi.Gtk
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab-05.glade')

ui = bld.objects

function ui.btn_new:on_clicked(...)
	ui.wnd2:show_all()
end

function ui.btn_hide:on_clicked(...)
	ui.wnd2:hide()

end

function ui.btn_new:on_clicked(...)
	lab_05_2nd_wnd = gtk.MessageDialog
{
	message_type = gtk.MessageType.INFO,
	buttons = gtk.ButtonsType.CLOSE,
	text = "Dima loves something",
	secondary_text = "idk what to say"
	
}

lab_05_2nd_wnd:run()
lab_05_2nd_wnd:destroy()
end

ui.wnd.title = 'lab-05'
ui.wnd2.title = 'lab-05-wnd2'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

gtk.main()
