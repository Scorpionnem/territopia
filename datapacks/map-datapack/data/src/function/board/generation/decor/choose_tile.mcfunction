execute if entity @s[tag=generated_decor] run \
	return 0

tag @s add final_decorated

function src:board/generation/decor/get_nearby_tiles

# Available scores
# nearby_deep_oceans
# nearby_oceans
# nearby_plains
# nearby_mountains
# nearby_terrain
# nearby_water

execute as @s[tag=decor_ocean] if score nearby_plains board_generation matches 3.. \
	if score nearby_water board_generation matches 0..5 run \
		return run function src:board/generation/decor/types/setplains

execute as @s[tag=decor_ocean] if score nearby_plains board_generation matches 0 \
	if score nearby_water board_generation matches 3.. run \
		return run function src:board/generation/decor/types/setdeepocean

execute as @s[tag=decor_mountains] if score nearby_plains board_generation matches 5.. run \
	return run function src:board/generation/decor/types/setplains
