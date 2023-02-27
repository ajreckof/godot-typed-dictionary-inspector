@tool
extends EditorResourcePicker

const setting_name = "addons/dictionary_inspector/resource_types"

@onready var button = get_child(1)

var plugin
var hint_string

func _init(resource, hint_array, plugin):
	print(hint_array)
	base_type = hint_array[0] if hint_array[0] else "Resource"
	print(base_type)
	editable = true
	toggle_mode = false
	edited_resource = resource
	self.plugin = plugin








#func set_create_options(menu):
#	var icon
#	var i = 0
#	for x in get_allowed_types():
#		if has_theme_icon(x, "EditorIcons"):
#			icon = get_theme_icon(x, "EditorIcons")
#
#		else:
#			icon = null
#
#		menu.add_icon_item(icon, "New " + x, i + 100)
#		i += 1
#
#	menu.add_separator()
#	menu.add_icon_item(get_theme_icon("Variant", "EditorIcons"), "Change Collection's Resource type", 90001)
#	menu.add_icon_item(get_theme_icon("Object", "EditorIcons"), "Reset Base Type", 90002)
#	menu.add_separator()
#
#
#func handle_menu_selected(id):
#	if id == 90001:
#		for x in get_children():
#			x.hide()
#
#		var edit = LineEdit.new()
#		add_child(edit)
#		edit.placeholder_text = "Enter class name..."
#		edit.connect("text_entered", _on_classname_submitted.bind(edit))
#		edit.grab_focus()
#		edit.size_flags_horizontal = SIZE_EXPAND_FILL
#
#	elif id == 90002:
#		_on_classname_submitted("Resource")
#
#	elif id >= 100 && id < get_allowed_types().size() + 100:
#		var new_res = ClassDB.instantiate(get_allowed_types()[id - 100])
#		emit_signal("resource_changed", new_res)
#		edited_resource = new_res
#
#	return false
#
#
#func _the_cooler_handle_menu_selected(id):
#	if id == 2:
#		if edited_resource is Script:
#			plugin.get_editor_interface().edit_script(edited_resource)
#
#		else:
#			plugin.get_editor_interface().edit_resource(edited_resource)
#
#
## func get_saved_type():
##   if !ProjectSettings.has_setting(setting_name):
##     return
#
##   var dict = ProjectSettings.get_setting(setting_name)
##   return dict.get(path_to_property, "Resource")
#
#
#func _on_classname_submitted(new_text, node = null):
#	if is_instance_valid(node):
#		node.queue_free()
#
#	for x in get_children():
#		x.show()
#
#	if !ClassDB.class_exists(new_text):
#		new_text = "Resource"
#
#	var property_boxes = get_node("../..").get_children()
#	for x in property_boxes:
#		for y in x.get_children():
#			if y is EditorResourcePicker:
#				y.set_base_type(new_text)
#
#	# TODO: allow creation of new resources of changed type
#	# If Base Type is changed, can't create new instances
#	if new_text != "Resource":
#		handle_menu_selected(0)
#
#	# else:
#	# 	get_child(0).grab_focus()
#
#	# var setting_dict = ProjectSettings.get_setting(setting_name)
#	# setting_dict[path_to_property] = new_text
#	# ProjectSettings.set_setting(setting_name, new_text)  
