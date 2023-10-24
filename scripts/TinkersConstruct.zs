import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;

mods.tconstruct.Casting.addTableRecipe(<contenttweaker:boulecast>, <minecraft:beef>, <liquid:gold>, 288, false, 180);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:boulecast>, <minecraft:cooked_beef>, <liquid:gold>, 288, false, 180);
// BEEF CAST BEEF CAST BEEF CAST
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:boulecast>, <libvulpes:productboule:3>, <liquid:gold>, 288, false, 180);
mods.tconstruct.Casting.addTableRecipe(<libvulpes:productboule:3>, <contenttweaker:boulecast>, <liquid:moltensilicon>, 288, false, 180);
mods.tconstruct.Melting.addRecipe(<liquid:moltenunrefinedsilicon> * 1000,<minecraft:quartz>, 1150);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.remove(<tconstruct:seared_tank>);
recipes.addShaped(<tconstruct:smeltery_controller>, [
	[<tconstruct:materials:0>, <appliedenergistics2:quartz_glass>, <tconstruct:materials:0>],
	[<tconstruct:materials:0>, <ore:circuitBasic>, <tconstruct:materials:0>],
	[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]]);
	mods.tconstruct.Casting.addBasinRecipe(<tconstruct:smeltery_controller>, <extrautils2:compressednetherrack:3>, <liquid:stone> , 3888, true);
recipes.addShaped(<tconstruct:seared_tank>, [
	[<tconstruct:materials:0>, <appliedenergistics2:quartz_glass>, <tconstruct:materials:0>],
	[<tconstruct:materials:0>, <appliedenergistics2:quartz_glass>, <tconstruct:materials:0>],
	[<tconstruct:materials:0>, <appliedenergistics2:quartz_glass>, <tconstruct:materials:0>]]);
furnace.remove(<tconstruct:materials:0>);
recipes.remove(<tconstruct:soil>);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <tconstruct:soil> , 8, [<minecraft:dirt> * 4, <minecraft:gravel> * 4, <minecraft:clay> * 2]);
furnace.addRecipe(<tconstruct:materials:0>, <tconstruct:soil>, 2.0); 
mods.pneumaticcraft.plasticmixer.addMeltOnlyRecipe(<tconstruct:soil:0>, <liquid:stone> * 144, 273 + 142);
mods.pneumaticcraft.plasticmixer.addMeltOnlyRecipe(<minecraft:clay>, <liquid:clay> * 144, 273 + 120);
mods.pneumaticcraft.plasticmixer.addMeltOnlyRecipe(<minecraft:gold_ingot>, <liquid:gold> * 144, 273 + 1120);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <libvulpes:productplate:3>, <liquid:gold>, 288, true, 180);