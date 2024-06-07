execute if score @s Fire matches 0 run tellraw @s [{"text": "[", "color": "gold"}, {"text": "Infuse", "color": "dark_aqua"}, {"text": "] ", "color": "gold"}, {"text": "You must have the Fire Resistance effect to drain it!", "color": "dark_red"}]
execute if score @s Fire matches 0 run return 1
tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have drained the Fire Resistance effect!","color":"yellow"}]
scoreboard players set @s Fire 0
loot give @s loot cootshk:infuse/fire
#give @s potion{CustomModelData: 1, display: {Name: '{"text": "Fire","bold": true,"color": "gold", "italic": false}', Lore: ['[{"text": "Potion drained by: "}, {"selector": "@s", "color": "aqua"}]']}} 1