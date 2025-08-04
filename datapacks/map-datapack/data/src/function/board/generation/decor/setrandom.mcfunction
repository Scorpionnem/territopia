execute store result score random board_generation run \
	random value 0..10

execute if score random board_generation matches 0..7 run \
	return run function src:board/generation/decor/types/setocean

execute if score random board_generation matches 8..9 run \
	return run function src:board/generation/decor/types/setplains

execute if score random board_generation matches 10 run \
	return run function src:board/generation/decor/types/setmountains
