#Mark the ray has having found an entity.

scoreboard players set #hit raycast 1

#Running custom commands since the entity was found.

tag @s[tag=tile] add this
tag @s[tag=tile] add glowing
execute if score @s[tag=plains] button.state matches 0 as @a[tag=currentplayer] at @s run playsound block.grass.step ambient @s ~ ~ ~
execute if score @s[tag=forest] button.state matches 0 as @a[tag=currentplayer] at @s run playsound block.grass.step ambient @s ~ ~ ~
execute if score @s[tag=mountains] button.state matches 0 as @a[tag=currentplayer] at @s run playsound block.stone.step ambient @s ~ ~ ~ 0.5
execute if score @s[tag=ocean] button.state matches 0 as @a[tag=currentplayer] at @s run playsound minecraft:block.pointed_dripstone.drip_water ambient @s ~ ~ ~
execute if score @s[tag=deep_ocean] button.state matches 0 as @a[tag=currentplayer] at @s run playsound minecraft:block.pointed_dripstone.drip_water ambient @s ~ ~ ~
scoreboard players set @s[tag=tile] button.state 1
scoreboard players set @e[tag=!this,tag=tile] button.state 0
execute as @s[tag=this] on passengers run data merge entity @s {Glowing:1b}
tag @s[tag=tile] remove this