#!/usr/bin/lua5.3

lgi = require 'lgi'

gtk = lgi.Gtk
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab-02.glade')

ui = bld.objects

function ui.btn_sum:on_clicked(...)

end

ui.calc.title = 'lab-02_Tsvetkov'
ui.calc.on_destroy = gtk.main_quit
ui.calc:show_all()

gtk.main()
