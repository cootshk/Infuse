execute if score @s Hero matches 0 run tellraw @s [{"text": "[", "color": "gold"}, {"text": "Infuse", "color": "dark_aqua"}, {"text": "] ", "color": "gold"}, {"text": "You must have the Hero of the Village effect to drain it!", "color": "dark_red"}]
execute if score @s Hero matches 0 run return 1
tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have drained the Hero of the Village effect!","color":"yellow"}]
scoreboard players set @s Hero 0
loot give @s loot cootshk:infuse/hero
#give @s potion{CustomModelData: 1, display: {Name: '{"text": "Hero","bold": true,"color": "gold", "italic": false}', Lore: ['[{"text": "Potion drained by: "}, {"selector": "@s", "color": "aqua"}]']}} 1