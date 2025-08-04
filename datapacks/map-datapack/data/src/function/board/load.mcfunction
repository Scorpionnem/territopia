scoreboard objectives add board_size dummy
scoreboard objectives add board_generation dummy

scoreboard players set x board_size 0
scoreboard players set y board_size 0

data modify storage board_generation size set value 1ui
