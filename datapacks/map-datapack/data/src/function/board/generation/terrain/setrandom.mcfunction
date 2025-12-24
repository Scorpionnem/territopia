execute store result score random board_generation run \
	random value 0..10

tag @s add generation_random

execute if score random board_generation matches 0..7 run \
	return run function src:board/generation/terrain/types/setocean

execute if score random board_generation matches 8..10 run \
	return run function src:board/generation/terrain/types/setplains

# execute if score random board_generation matches 10 run \
# 	return run function src:board/generation/terrain/types/setmountains
