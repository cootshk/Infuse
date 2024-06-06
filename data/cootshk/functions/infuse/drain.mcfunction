scoreboard players set @s DrainPotion 0
function cootshk:infuse/count_effects
execute unless score @s PotionCount matches 1.. run tellraw @s [{"text": "[", "color": "gold"}, {"text": "Infuse", "color": "dark_aqua"}, {"text": "] ", "color": "gold"}, {"text": "You must have a positive number of potion effects applied to drain an effect!", "color": "dark_red"}]
execute unless score @s PotionCount matches 1.. run return 1
execute if score @s Speed matches 1 run tellraw @s {"text": "[Drain Speed]", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function cootshk:infuse/drain/speed"}}
execute if score @s Hero matches 1 run tellraw @s {"text": "[Drain Hero of the Village]", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function cootshk:infuse/drain/hero"}}
execute if score @s Health matches 1 run tellraw @s {"text": "[Drain Health Boost]", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function cootshk:infuse/drain/health"}}
execute if score @s Conduit matches 1 run tellraw @s {"text": "[Drain Conduit's Power]", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function cootshk:infuse/drain/conduit"}}
execute if score @s Haste matches 1 run tellraw @s {"text": "[Drain Haste]", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function cootshk:infuse/drain/haste"}}
execute if score @s Fire matches 1 run tellraw @s {"text": "[Drain Fire Resistance]", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function cootshk:infuse/drain/fire"}}
execute if score @s Strength matches 1 run tellraw @s {"text": "[Drain Strength]", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function cootshk:infuse/drain/strength"}}