execute as @e if score @s scheduleid = global scheduleid at @s run function units:general/schedule/inittags
scoreboard players remove global scheduleid 1