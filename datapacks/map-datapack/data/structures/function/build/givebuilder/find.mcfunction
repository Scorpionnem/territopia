item replace entity @n[tag=currentplayer] enderchest.0 from entity @n[tag=currentplayer] container.0
item replace entity @n[tag=currentplayer] enderchest.1 from entity @n[tag=currentplayer] container.1
item replace entity @n[tag=currentplayer] enderchest.2 from entity @n[tag=currentplayer] container.2
item replace entity @n[tag=currentplayer] enderchest.3 from entity @n[tag=currentplayer] container.3
item replace entity @n[tag=currentplayer] enderchest.4 from entity @n[tag=currentplayer] container.4
item replace entity @n[tag=currentplayer] enderchest.5 from entity @n[tag=currentplayer] container.5
item replace entity @n[tag=currentplayer] enderchest.6 from entity @n[tag=currentplayer] container.6
item replace entity @n[tag=currentplayer] enderchest.7 from entity @n[tag=currentplayer] container.7
item replace entity @n[tag=currentplayer] enderchest.8 from entity @n[tag=currentplayer] container.8


execute if entity @s[tag=unit] run return run function structures:build/givebuilder/findunit

execute if entity @s[tag=ocean,tag=!fish,tag=village.land,tag=!structure] run return run function structures:build/givebuilder/ocean

execute if entity @s[tag=plains,tag=!fruit,tag=!farm,tag=!village,tag=village.land,tag=!structure] run return run function structures:build/givebuilder/plains

execute if entity @s[tag=plains,tag=!fruit,tag=farm,tag=!village,tag=village.land,tag=!structure] run return run function structures:build/givebuilder/farm

execute if entity @s[tag=plains,tag=village,tag=village.land,tag=!structure] run return run function structures:build/givebuilder/village

execute if entity @s[tag=forest,tag=!hunt,tag=village.land,tag=!structure] run return run function structures:build/givebuilder/forest

execute if entity @s[tag=mountains,tag=ore_vein,tag=village.land,tag=!structure] run return run function structures:build/givebuilder/mine

tellraw @a[tag=currentplayer] "You cannot build here!"