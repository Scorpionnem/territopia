execute unless score @s village.xp = @s village.xp.nextlevel run return fail

scoreboard players set @s village.xp 0
scoreboard players add @s village.xp.nextlevel 1
scoreboard players add @s village.level 1

scoreboard players add @s village.maxunitscount 1
scoreboard players add @s village.starsperturn 1

say village upgraded