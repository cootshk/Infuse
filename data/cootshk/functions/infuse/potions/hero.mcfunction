advancement revoke @s only cootshk:infuse/potions/hero
execute if score @s PotionCount matches ..-1 run scoreboard players add @s OnKill 1
execute if score @s PotionCount matches ..-1 run return 1
execute if score @s Hero matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You already have the Hero effect!","color":"dark_red"}]
execute if score @s Hero matches 1 run loot give @s loot cootshk:infuse/hero
execute if score @s Hero matches 1 run clear @s glass_bottle 1
execute if score @s Hero matches 1 run return 1
scoreboard players set @s Hero 1
tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have drank the Hero effect!","color":"yellow"}]