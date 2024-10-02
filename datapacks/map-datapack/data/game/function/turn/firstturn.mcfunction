$execute as @s[tag=player$(currentplayer)] at @e[tag=startplayer$(currentplayer)] run function game:village/capture with storage game

$execute as @e[tag=startplayer$(currentplayer)] at @s positioned ~ ~7 ~ run tp @a[tag=currentplayer,tag=player$(currentplayer)] ~ ~ ~

execute at @s run function units:summon/warrior with storage game
scoreboard players set @e[tag=unit] unit.moovesleft 1
function board:fog/remove_fog_around_unit with storage game
