$execute if entity @s[tag=!player$(currentplayer)] run return 0

$scoreboard players operation player$(currentplayer) stars += @s village.starsperturn
