extends EditorInspectorPlugin



var plugin


func _init(plugin):
	self.plugin = plugin


func _can_handle(object):
	return true


func _parse_property(object, type, path, hint, hint_text , usage, wide) -> bool:

	if object != null:
		if type == TYPE_DICTIONARY && hint_text.split(",").size() in [1,2]:
			add_property_editor(path, preload("res://addons/dictionary_inspector/inspector_property.gd").new(object[path], hint_text, plugin))
			return true
	return false
