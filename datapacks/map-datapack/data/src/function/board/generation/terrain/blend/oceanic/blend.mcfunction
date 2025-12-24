
#  Blends tiles based on nearby tiles to simulate noise

tag @s add final_decorated

function src:board/generation/terrain/get_nearby_tiles

# Available scores
# nearby_deep_oceans
# nearby_oceans
# nearby_plains
# nearby_mountains
# nearby_terrain
# nearby_water

execute as @s[tag=decor_ocean] if score nearby_plains board_generation matches 4.. \
	if score nearby_water board_generation matches 0..5 run \
		return run function src:board/generation/terrain/types/setplains

execute as @s[tag=decor_ocean] if score nearby_plains board_generation matches ..1 \
	if score nearby_water board_generation matches 3.. run \
		return run function src:board/generation/terrain/types/setdeepocean

execute as @s[tag=decor_plains] if score nearby_deep_oceans board_generation matches 1.. run \
	return run function src:board/generation/terrain/types/setmountains

execute as @s[tag=decor_mountains] if score nearby_plains board_generation matches 5.. run \
	return run function src:board/generation/terrain/types/setplains
