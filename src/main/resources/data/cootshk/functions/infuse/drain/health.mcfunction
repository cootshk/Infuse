execute if score @s Health matches 0 run tellraw @s [{"text": "[", "color": "gold"}, {"text": "Infuse", "color": "dark_aqua"}, {"text": "] ", "color": "gold"}, {"text": "You must have the Health Boost effect to drain it!", "color": "dark_red"}]
execute if score @s Health matches 0 run return 1
tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have drained the Health Boost effect!","color":"yellow"}]
scoreboard players set @s Health 0
loot give @s loot cootshk:infuse/health
#give @s potion{CustomModelData: 1, display: {Name: '{"text": "Health","bold": true,"color": "gold", "italic": false}', Lore: ['[{"text": "Potion drained by: "}, {"selector": "@s", "color": "aqua"}]']}} 1