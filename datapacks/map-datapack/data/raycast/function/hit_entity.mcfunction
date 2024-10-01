#Mark the ray has having found an entity.

scoreboard players set #hit raycast 1

#Running custom commands since the entity was found.

tag @s[tag=tile] add this
tag @s[tag=tile] add glowing
execute unless score @a[tag=currentplayer,limit=1] setting.sounds matches 1 run function raycast:sound_setting
scoreboard players set @s[tag=tile] button.state 1
scoreboard players set @e[tag=!this,tag=tile] button.state 0
execute as @s[tag=this] on passengers run data merge entity @s {Glowing:1b}
tag @s[tag=tile] remove this