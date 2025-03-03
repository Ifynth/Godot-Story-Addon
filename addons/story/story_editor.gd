@tool
extends EditorPlugin

const MainScene = preload("res://addons/story/scene/main.tscn")
const BookIcon = preload("res://addons/story/assets/GodotBookIcon.png")

var main_scene_instance

func _enter_tree():
	main_scene_instance = MainScene.instantiate()
	# Add the main panel to the editor's main viewport.
	EditorInterface.get_editor_main_screen().add_child(main_scene_instance)
	# Hide the main panel. Very much required.
	# _make_visible(false)
	main_scene_instance.hide()

func _exit_tree():
	if main_scene_instance:
		main_scene_instance.queue_free()

func _has_main_screen():
	return true

func _make_visible(visible):
	if main_scene_instance:
		main_scene_instance.visible = visible

func _get_plugin_name():
	return "Story"

func _get_plugin_icon():
	return BookIcon
