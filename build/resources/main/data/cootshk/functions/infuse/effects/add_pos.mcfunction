#tellraw @s "Adding positive effect"
execute if score @s PotionCount matches 7.. run return 1
execute store result score @s HasPotion run function cootshk:infuse/effects/has_effect_pos

# If effect is already applied, reroll
execute if score @s HasPotion matches 1 run scoreboard players add @s CurrentPotion 1
execute if score @s HasPotion matches 1 if score @s CurrentPotion matches 8 run scoreboard players set @s CurrentPotion 1
execute if score @s HasPotion matches 1 run function cootshk:infuse/effects/add_pos

execute if score @s CurrentPotion matches 1 run scoreboard players set @s Speed 1
execute if score @s CurrentPotion matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Speed effect!","color":"green"}]
execute if score @s CurrentPotion matches 2 run scoreboard players set @s Hero 1
execute if score @s CurrentPotion matches 2 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Hero of the Village effect!","color":"green"}]
execute if score @s CurrentPotion matches 3 run scoreboard players set @s Health 1
execute if score @s CurrentPotion matches 3 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Health Boost effect!","color":"green"}]
execute if score @s CurrentPotion matches 4 run scoreboard players set @s Conduit 1
execute if score @s CurrentPotion matches 4 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Conduit's Power effect!","color":"green"}]
execute if score @s CurrentPotion matches 5 run scoreboard players set @s Haste 1
execute if score @s CurrentPotion matches 5 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Haste effect!","color":"green"}]
execute if score @s CurrentPotion matches 6 run scoreboard players set @s Fire 1
execute if score @s CurrentPotion matches 6 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Fire Resistance effect!","color":"green"}]
execute if score @s CurrentPotion matches 7 run scoreboard players set @s Strength 1
execute if score @s CurrentPotion matches 7 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Strength effect!","color":"green"}]