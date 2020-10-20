lgi=require 'lgi'
gtk=lgi.Gtk
gdk=lgi.Gdk
pixbuf=lgi.GdkPixbuf.Pixbuf
gtk.init()

image_arr={"img-apple.png","orange.png","blueberry.png","cherry.png"}
bld=gtk.Builder()
bld:add_from_file('lab-04.glade')
ui=bld.objects
prov=gtk.CssProvider()
prov:load_from_path('style.css')

ctx=gtk.StyleContext()
scr=gdk.Screen.get_default()
ctx.add_provider_for_screen(scr,prov,gtk.STYLE_PROVIDER_PRIORITY_APPLICATION)

function ui.add_btn:on_clicked(...)
i=ui.md_it:append()
ui.md_it[i]={[1]=ui.name.text, [2]=tonumber(ui.val.text),[3]=pixbuf.new_from_file(image_arr[ui.pic.active+1])}
end
rdr_txt=gtk.CellRendererText{}
rdr_pix=gtk.CellRendererPixbuf{}

c1=gtk.TreeViewColumn{title='Name', {rdr_txt,{text=1}}}
c2=gtk.TreeViewColumn{title='Value', {rdr_txt,{text=2}}}
c3=gtk.TreeViewColumn{title='Image', {rdr_pix,{pixbuf=3}}}

ui.list:append_column(c1)
ui.list:append_column(c2)
ui.list:append_column(c3)
ui.wnd.title='lab-04_Zhukov'
ui.wnd.on_destroy=gtk.main_quit
ui.wnd:show_all()
gtk.main()
