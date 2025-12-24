function src:board/generation/terrain/types/reset

summon item_display ~ ~ ~ {Tags:["decor", "board"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[2f,1f,2f]},item:{id:"minecraft:stone",count:1}}
execute as @n[tag=decor] at @s \
	run ride @s mount @n[tag=tile]

tag @s add decor_mountains
