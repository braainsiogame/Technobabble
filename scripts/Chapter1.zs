import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// mods.pneumaticcraft.assembly.addLaserRecipe(IItemStack input, IItemStack output);
// mods.pneumaticcraft.assembly.addDrillRecipe(IItemStack input, IItemStack output);
recipes.remove(<thermalfoundation:material:512>); //servo
recipes.remove(<thermalfoundation:material:513>); //reception
recipes.remove(<thermalfoundation:material:514>); // tranmission
recipes.remove(<thermalfoundation:material:515>); // condutance
recipes.remove(<thermalexpansion:frame:0>); //machine
recipes.remove(<thermalexpansion:frame:64>); //device

mods.pneumaticcraft.assembly.addDrillRecipe(<contenttweaker:steelframeplate> * 6, <mekanism:basicblock:8>);
/*mods.pneumaticcraft.assembly.addLaserRecipe([<minecraft:redstone> * 2, <minecraft:iron_ingot>], <thermalfoundation:material:512>);
mods.pneumaticcraft.assembly.addLaserRecipe([<minecraft:redstone> * 2, <minecraft:gold_ingot>], <thermalfoundation:material:513>);
mods.pneumaticcraft.assembly.addLaserRecipe([<minecraft:redstone> * 2, <ore:ingotSilver>], <thermalfoundation:material:514>);
mods.pneumaticcraft.assembly.addLaserRecipe([<minecraft:redstone> * 2, <ore:ingotElectrum>], <thermalfoundation:material:515>);
mods.pneumaticcraft.assembly.addDrillRecipe([<ore:gearTin>, <minecraft:iron_ingot> * 4, <ore:blockGlass> * 4],  <thermalexpansion:frame:0>);
mods.pneumaticcraft.assembly.addDrillRecipe([<ore:gearCopper>, <ore:ingotTin> * 4, <ore:blockGlass> * 4],  <thermalexpansion:frame:64>);*/