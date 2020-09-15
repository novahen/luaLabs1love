#!/usr/bin/lua5.3

lgi = require 'lgi'

gtk = lgi.Gtk
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab-02.glade')

ui = bld.objects

function ui.btn_sum:on_clicked(...)
a = tonumber(ui.text1.text)
b = tonumber(ui.text2.text)
ui.res.label = a+b
end

function ui.btn_sub:on_clicked(...)
a = tonumber(ui.text1.text)
b = tonumber(ui.text2.text)
ui.res.label = a-b
end

function ui.btn_multi:on_clicked(...)
a = tonumber(ui.text1.text)
b = tonumber(ui.text2.text)
ui.res.label = a*b
end

function ui.btn_div:on_clicked(...)
a = tonumber(ui.text1.text)
b = tonumber(ui.text2.text)
if (b == 0) then
ui.res.label = 'Error'
else
ui.res.label = a/b

end
end

function ui.btn_pow:on_clicked(...)
a = tonumber(ui.text1.text)
b = tonumber(ui.text2.text)

ui.res.label = a^b

end

function ui.btn_sqrt:on_clicked(...)
a = tonumber(ui.text1.text)
b = tonumber(ui.text2.text)
if (a<0) then
ui.res.label = 'Error'
else
ui.res.label = math.sqrt(a)

end
end


function ui.btn_log:on_clicked(...)
a = tonumber(ui.text1.text)
b = tonumber(ui.text2.text)
if (a<0) then
ui.res.label = 'Error'
else
ui.res.label = math.log10(a)

end
end

ui.calc.title = 'lab-02_Tsvetkov'
ui.calc.on_destroy = gtk.main_quit
ui.calc:show_all()

gtk.main()
