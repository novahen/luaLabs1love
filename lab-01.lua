#!/usr/bin/lua5.3

lgi = require 'lgi'

gtk = lgi.Gtk
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab-01.glade')

ui = bld.objects

ui.Label.title = 'lab-01'
ui.Label.on_destroy = gtk.main_quit
ui.Label:show_all()

gtk.main()
