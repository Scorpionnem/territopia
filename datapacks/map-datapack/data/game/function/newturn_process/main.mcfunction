execute as @e[tag=capturedvillage] run function game:newturn_process/village_stars {currentplayer:1}
execute as @e[tag=capturedvillage] run function game:newturn_process/village_stars {currentplayer:2}
execute as @e[tag=capturedvillage] run function game:newturn_process/village_stars {currentplayer:3}
execute as @e[tag=capturedvillage] run function game:newturn_process/village_stars {currentplayer:4}

execute as @e[tag=unit] on vehicle if entity @s[tag=village,tag=!capturedvillage] run tag @s add village.cancapture