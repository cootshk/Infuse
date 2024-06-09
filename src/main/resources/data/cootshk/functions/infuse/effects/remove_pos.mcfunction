execute store result score @s HasPotion run function cootshk:infuse/effects/has_effect_pos

# If effect is already applied, reroll
execute if score @s HasPotion matches 0 run scoreboard players add @s CurrentPotion 1
execute if score @s HasPotion matches 0 if score @s CurrentPotion matches 8 run scoreboard players set @s CurrentPotion 1
execute if score @s HasPotion matches 0 run return run function cootshk:infuse/effects/remove_pos

execute if score @s CurrentPotion matches 1 run scoreboard players set @s Speed 0
execute if score @s CurrentPotion matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have lost the Speed effect!","color":"red"}]
execute if score @s CurrentPotion matches 2 run scoreboard players set @s Hero 0
execute if score @s CurrentPotion matches 2 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have lost the Hero of the Village effect!","color":"red"}]
execute if score @s CurrentPotion matches 3 run scoreboard players set @s Health 0
execute if score @s CurrentPotion matches 3 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have lost the Regeneration effect!","color":"red"}]
execute if score @s CurrentPotion matches 4 run scoreboard players set @s Conduit 0
execute if score @s CurrentPotion matches 4 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have lost the Conduit Power effect!","color":"red"}]
execute if score @s CurrentPotion matches 5 run scoreboard players set @s Haste 0
execute if score @s CurrentPotion matches 5 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have lost the Haste effect!","color":"red"}]
execute if score @s CurrentPotion matches 6 run scoreboard players set @s Fire 0
execute if score @s CurrentPotion matches 6 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have lost the Fire Resistance effect!","color":"red"}]
execute if score @s CurrentPotion matches 7 run scoreboard players set @s Strength 0
execute if score @s CurrentPotion matches 7 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have lost the Strength effect!","color":"red"}]