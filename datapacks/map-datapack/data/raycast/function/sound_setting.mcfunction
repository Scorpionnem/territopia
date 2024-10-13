execute if score @s[tag=plains,tag=!fog] button.state matches 0 as @a[tag=currentplayer] at @s run playsound block.grass.step ambient @s ~ ~ ~
execute if score @s[tag=forest,tag=!fog] button.state matches 0 as @a[tag=currentplayer] at @s run playsound block.grass.step ambient @s ~ ~ ~
execute if score @s[tag=mountains,tag=!fog] button.state matches 0 as @a[tag=currentplayer] at @s run playsound block.stone.step ambient @s ~ ~ ~ 0.5
execute if score @s[tag=ocean,tag=!fog] button.state matches 0 as @a[tag=currentplayer] at @s run playsound minecraft:block.pointed_dripstone.drip_water ambient @s ~ ~ ~
execute if score @s[tag=deep_ocean,tag=!fog] button.state matches 0 as @a[tag=currentplayer] at @s run playsound minecraft:block.pointed_dripstone.drip_water ambient @s ~ ~ ~
execute if score @s[tag=fog] button.state matches 0 as @a[tag=currentplayer] at @s run playsound minecraft:block.snow.place ambient @s ~ ~ ~
