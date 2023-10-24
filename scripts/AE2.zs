import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import mods.appliedenergistics2.Grinder;
import mods.appliedenergistics2.Inscriber;
recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped(<appliedenergistics2:grindstone>, [
	[<minecraft:stone>, <ore:ingotIron>, <minecraft:stone>],
	[<minecraft:stone>, <ore:gearStone>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:hopper>,<minecraft:stone>]]);
Grinder.removeRecipe(<ore:dustIron>);
Grinder.removeRecipe(<ore:dustCoal>);
Grinder.addRecipe(<minecraft:iron_ingot>,<thermalfoundation:material:0>, 15);
Grinder.addRecipe(<minecraft:coal>,<thermalfoundation:material:768>, 15);
Grinder.addRecipe(<minecraft:glass>,<appliedenergistics2:material:3>, 15);
furnace.remove(<ore:itemSilicon>);
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [
[<ore:plateSteel>, <minecraft:piston>, <ore:plateSteel>],
[<ore:plateSteel>, <appliedenergistics2:quartz_glass>, <ore:plateSteel>],
[<ore:plateSteel>, <minecraft:iron_block>, <ore:plateSteel>]]);
Inscriber.removeRecipe(<appliedenergistics2:material:16>);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:13>, <mekanism:ingot:1>, <liquid:moltensilicon>, 1000, true, 360);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:14>, <minecraft:diamond>, <liquid:moltensilicon>, 1000, true, 360);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:15>, <minecraft:gold_ingot>, <liquid:moltensilicon>, 1000, true, 360);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:19>, <appliedenergistics2:material:5>, <liquid:moltensilicon>, 1000, true, 360);
Inscriber.addRecipe(<appliedenergistics2:material:16>, <mekanism:ingot:1>, true, <appliedenergistics2:material:13>);
