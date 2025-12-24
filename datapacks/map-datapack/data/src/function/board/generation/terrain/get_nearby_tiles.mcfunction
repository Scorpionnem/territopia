scoreboard players set nearby_deep_oceans board_generation 0
scoreboard players set nearby_oceans board_generation 0
scoreboard players set nearby_plains board_generation 0
scoreboard players set nearby_mountains board_generation 0



execute as @e[distance=..3,tag=decor_ocean] run \
	scoreboard players add nearby_oceans board_generation 1

execute as @e[distance=..3,tag=decor_deep_ocean] run \
	scoreboard players add nearby_deep_oceans board_generation 1

execute as @e[distance=..3,tag=decor_plains] run \
	scoreboard players add nearby_plains board_generation 1

execute as @e[distance=..3,tag=decor_mountains] run \
	scoreboard players add nearby_mountains board_generation 1

scoreboard players set nearby_water board_generation 0
scoreboard players set nearby_terrain board_generation 0

scoreboard players operation nearby_water board_generation += nearby_oceans board_generation
scoreboard players operation nearby_water board_generation += nearby_deep_ocean board_generation

scoreboard players operation nearby_terrain board_generation += nearby_plains board_generation
scoreboard players operation nearby_terrain board_generation += nearby_mountains board_generation
