import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// pressure chamber crafting recipes
mods.pneumaticcraft.explosioncrafting.removeRecipe(<pneumaticcraft:ingot_iron_compressed>);
mods.pneumaticcraft.explosioncrafting.addRecipe(<ore:ingotSteel>, <pneumaticcraft:ingot_iron_compressed>, 10);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:ingotSteel>], 2.0, [<pneumaticcraft:ingot_iron_compressed>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:turbine_blade>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<pneumaticcraft:ingot_iron_compressed> * 2, <thermalfoundation:material:39>], 1.0, [<pneumaticcraft:turbine_blade>]);
// silicon 
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:moltenunrefinedsilicon> * 1000, <minecraft:coal>, 2.0, 273 + 1150, <liquid:moltensilicon> * 1000);
mods.pneumaticcraft.refinery.addRecipe(300, <liquid:biomass> * 1000, [<liquid:crude_oil> * 100, <liquid:water> * 540]);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 1000, <minecraft:sapling>, 2.0, 273 + 500, <liquid:biomass> * 50);
for item in <ore:treeLeaves>.items {
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 1000, item, 2.0, 273 + 500, <liquid:biomass> * 70);
}
for item in <ore:logWood>.items {
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 1000, item, 2.0, 273 + 1200, <liquid:biomass> * 1000);
}
for items in <ore:plankWood>.items {
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 1000, items, 2.0, 273 + 1200, <liquid:biomass> * 250);
}
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:water> * 1000, <minecraft:reeds>, 2.0, 273 + 500, <liquid:biomass> * 125);
for item in <ore:materialToolStone>.items {
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(item, 2.0, 273 + 2000, <liquid:lava> * 125);
}
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<minecraft:netherrack>, 2.0, 273 + 1150, <liquid:lava> * 125);
