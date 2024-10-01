execute if score @s[tag=plains] button.state matches 0 as @a[tag=currentplayer] at @s run playsound block.grass.step ambient @s ~ ~ ~
execute if score @s[tag=forest] button.state matches 0 as @a[tag=currentplayer] at @s run playsound block.grass.step ambient @s ~ ~ ~
execute if score @s[tag=mountains] button.state matches 0 as @a[tag=currentplayer] at @s run playsound block.stone.step ambient @s ~ ~ ~ 0.5
execute if score @s[tag=ocean] button.state matches 0 as @a[tag=currentplayer] at @s run playsound minecraft:block.pointed_dripstone.drip_water ambient @s ~ ~ ~
execute if score @s[tag=deep_ocean] button.state matches 0 as @a[tag=currentplayer] at @s run playsound minecraft:block.pointed_dripstone.drip_water ambient @s ~ ~ ~
