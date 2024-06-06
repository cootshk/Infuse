scoreboard players set @s PotionCount 0
execute if score @s Speed matches 1 run scoreboard players add @s PotionCount 1
execute if score @s Hero matches 1 run scoreboard players add @s PotionCount 1
execute if score @s Health matches 1 run scoreboard players add @s PotionCount 1
execute if score @s Conduit matches 1 run scoreboard players add @s PotionCount 1
execute if score @s Haste matches 1 run scoreboard players add @s PotionCount 1
execute if score @s Fire matches 1 run scoreboard players add @s PotionCount 1
execute if score @s Strength matches 1 run scoreboard players add @s PotionCount 1

execute if score @s Slowness matches 1 run scoreboard players remove @s PotionCount 1
execute if score @s Falling matches 1 run scoreboard players remove @s PotionCount 1
execute if score @s Jump matches 1 run scoreboard players remove @s PotionCount 1
execute if score @s Mining matches 1 run scoreboard players remove @s PotionCount 1
execute if score @s Hunger matches 1 run scoreboard players remove @s PotionCount 1
execute if score @s Darkness matches 1 run scoreboard players remove @s PotionCount 1
execute if score @s Weakness matches 1 run scoreboard players remove @s PotionCount 1

execute if score DEBUG InfuseSettings matches 1 run tellraw @s [{"text":"You had ","color":"white"},{"score":{"name":"@s","objective":"PotionCount"}},{"text":" effects applied before this one.","color":"white"}]