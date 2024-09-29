
#: loop generation
scoreboard players remove .x board 1
$scoreboard players set .z board $(scale)
$execute positioned ~2.0 ~ ~-$(scale) positioned ~ ~ ~-$(scale) positioned ~ ~ ~2.0 run function board:board/innit/summon