scoreboard players set value playercount 0
execute as @a[tag=player1] run scoreboard players add value playercount 1
execute as @a[tag=player2] run scoreboard players add value playercount 1
execute as @a[tag=player3] run scoreboard players add value playercount 1
execute as @a[tag=player4] run scoreboard players add value playercount 1

execute if score value playercount matches 0 run return run tellraw @a "Error! No players"

scoreboard players set player currentplayer 1
execute store result storage game currentplayer int 1 run scoreboard players get player currentplayer
scoreboard players set player1 score 0
scoreboard players set player2 score 0
scoreboard players set player3 score 0
scoreboard players set player4 score 0

function board:generate with storage minecraft:generation
scoreboard players set state game 1
scoreboard players set value turn 0
tellraw @a "Start"

function board:fog/summon
tp @a -2000 1 2000 0 0

function game:nextplayer/nextplayer with storage game

bossbar set minecraft:player1 players @a[tag=player1]
bossbar set minecraft:player2 players @a[tag=player2]
bossbar set minecraft:player3 players @a[tag=player3]
bossbar set minecraft:player4 players @a[tag=player4]



scoreboard players set player1 stars 5
scoreboard players set player2 stars 5
scoreboard players set player3 stars 5
scoreboard players set player4 stars 5


function game:updatebossbar
