scoreboard players set @n[tag=currentplayer] carrot 0
scoreboard players set @n[tag=currentplayer] carrotcooldown 4

item replace entity @n[tag=currentplayer] enderchest.0 from entity @n[tag=currentplayer] container.0
item replace entity @n[tag=currentplayer] enderchest.1 from entity @n[tag=currentplayer] container.1
item replace entity @n[tag=currentplayer] enderchest.2 from entity @n[tag=currentplayer] container.2
item replace entity @n[tag=currentplayer] enderchest.3 from entity @n[tag=currentplayer] container.3
item replace entity @n[tag=currentplayer] enderchest.4 from entity @n[tag=currentplayer] container.4
item replace entity @n[tag=currentplayer] enderchest.5 from entity @n[tag=currentplayer] container.5
item replace entity @n[tag=currentplayer] enderchest.6 from entity @n[tag=currentplayer] container.6
item replace entity @n[tag=currentplayer] enderchest.7 from entity @n[tag=currentplayer] container.7
item replace entity @n[tag=currentplayer] enderchest.8 from entity @n[tag=currentplayer] container.8
execute as @n[tag=currentplayer] run clear @s

item replace entity @n[tag=currentplayer] container.0 with carrot_on_a_stick[item_name='"Cancel"',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴛᴏ ᴄᴀɴᴄᴇʟ"}'],custom_data={cancel:1},custom_model_data=6,attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"minecraft:player.entity_interaction_range",amount:-64,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1
