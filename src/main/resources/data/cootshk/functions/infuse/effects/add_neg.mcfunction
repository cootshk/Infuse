execute store result score @s HasPotion run function cootshk:infuse/effects/has_effect_neg
execute if score @s PotionCount matches ..-7 run return 1
# If effect is already applied, reroll
execute if score @s HasPotion matches 1 run scoreboard players add @s CurrentPotion 1
execute if score @s HasPotion matches 1 if score @s CurrentPotion matches 8 run scoreboard players set @s CurrentPotion 1
execute if score @s HasPotion matches 1 run return run function cootshk:infuse/effects/add_neg

execute if score @s CurrentPotion matches 1 run scoreboard players set @s Slowness 1
execute if score @s CurrentPotion matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Slowness effect!","color":"red"}]
execute if score @s CurrentPotion matches 2 run scoreboard players set @s Falling 1
execute if score @s CurrentPotion matches 2 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Levitation effect!","color":"red"}]
execute if score @s CurrentPotion matches 3 run scoreboard players set @s Jump 1
execute if score @s CurrentPotion matches 3 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Jump Boost effect!","color":"red"}]
execute if score @s CurrentPotion matches 4 run scoreboard players set @s Mining 1
execute if score @s CurrentPotion matches 4 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Mining Fatigue effect!","color":"red"}]
execute if score @s CurrentPotion matches 5 run scoreboard players set @s Hunger 1
execute if score @s CurrentPotion matches 5 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Hunger effect!","color":"red"}]
execute if score @s CurrentPotion matches 6 run scoreboard players set @s Glowing 1
execute if score @s CurrentPotion matches 6 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Glowing effect!","color":"red"}]
execute if score @s CurrentPotion matches 7 run scoreboard players set @s Weakness 1
execute if score @s CurrentPotion matches 7 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have gained the Weakness effect!","color":"red"}]