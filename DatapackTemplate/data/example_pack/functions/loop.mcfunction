#If you make a hashtag in an mcfunction file, you can have non running text to leave notes like this
#This is your loop folder which constantly loops as long as the datapack isn't disabled in the world folder
#If you want to run another function in the functions folder, type "function example_pack:insert_other_function_name_here" as a command

#La boule de neige est détéctée, si elle a le tag custom: 1b, je vérifie que le bloc devant/sous elle n'est pas de l'air, et je le remplace par de l'eau
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{custom:1b}}} ,limit=1] at @s unless block ^ ^ ^1 air run setblock ~ ~ ~ water
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{custom:1b}}} ,limit=1] at @s unless block ^ ^-1 ^ air run setblock ~ ~ ~ water

#Après ça, je la fait despawn ( évite qu'il n'y ait 50 blocs d'eau si lancée horizontalement )
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{custom:1b}}} ,limit=1] at @s unless block ^ ^-1 ^ air run kill @e[type=minecraft:snowball, nbt={Item:{tag:{custom:1b}}} ,limit=1]
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{custom:1b}}} ,limit=1] at @s unless block ^ ^ ^1 air run kill @e[type=minecraft:snowball, nbt={Item:{tag:{custom:1b}}} ,limit=1]
