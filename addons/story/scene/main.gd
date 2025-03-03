extends Control

func _on_file_index_pressed(index: int) -> void:
	### Index
	# 0 - New
	# 1 - Open
	
	### Selected: File -> New 
	print('Selected: File -> New')
	$NewStory.show()
