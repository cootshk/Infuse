##
 # reset.mcfunction
 # infuse
 #
 # Created by Cootshk.
##

# Events
scoreboard objectives add OnKill minecraft.custom:minecraft.player_kills
scoreboard objectives add OnDeath minecraft.killed_by:minecraft.player



# Positives
scoreboard objectives add Speed dummy
scoreboard objectives add Hero dummy
scoreboard objectives add Health dummy
scoreboard objectives add Conduit dummy
scoreboard objectives add Haste dummy
scoreboard objectives add Fire dummy
scoreboard objectives add Strength dummy

# Negatives
scoreboard objectives add Slowness dummy
scoreboard objectives add Falling dummy
scoreboard objectives add Jump dummy
scoreboard objectives add Mining dummy
scoreboard objectives add Hunger dummy
scoreboard objectives add Darkness dummy
scoreboard objectives add Weakness dummy

# Set on every tick
scoreboard objectives add CurrentPotion dummy
scoreboard objectives add HasPotion dummy
scoreboard objectives add PotionCount dummy
scoreboard objectives add CurrentRoll dummy

# Counters
scoreboard objectives add InfuseResetCounter dummy
# Settings
scoreboard objectives add InfuseSettings dummy

# Triggers
scoreboard objectives add ResetInfuse trigger
scoreboard objectives add DrainPotion trigger