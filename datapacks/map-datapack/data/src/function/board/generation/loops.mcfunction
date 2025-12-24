execute if score generating board_generation matches 1 run function src:board/generation/terrain/generate_random
execute if score generating board_generation matches 1 run return 1

execute if score generating board_generation matches 2 run function src:board/generation/terrain/generate_blend
execute if score generating board_generation matches 2 run return 1

return 0
