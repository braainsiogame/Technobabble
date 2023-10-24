import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemTransformer;

recipes.addShapeless("steelframeplate", <contenttweaker:steelframeplate> * 2 , [<advgenerators:iron_frame>, <ore:plateSteel>, <ore:hammers>.transformDamage(1)]);
recipes.addShaped(<thermalfoundation:material:96>, [
	[<ore:dustIron>, <ore:dustCoal>],
	[<ore:dustCoal>, <ore:dustIron>]]);
recipes.addShapeless("silicon plate", <libvulpes:productplate:3> * 6, [<ore:itemQuartzKnife>.transformDamage(5), <libvulpes:productboule:3>]);
recipes.addShapeless("silicon boule", <appliedenergistics2:material:5> * 2, [<ore:itemQuartzKnife>.transformDamage(5), <libvulpes:productplate:3>]);
recipes.remove(<mekanism:basicblock:8>);
recipes.remove(<cyclicmagic:item_pipe>);
recipes.remove(<cyclicmagic:energy_pipe>);
recipes.remove(<cyclicmagic:fluid_pipe>);
recipes.remove(<cyclicmagic:item_pump>);
recipes.remove(<cyclicmagic:energy_pump>);
recipes.remove(<cyclicmagic:fluid_pump>);
recipes.remove(<cyclicmagic:bundled_pipe>);

recipes.addShaped(<cyclicmagic:item_pipe>, [
	[<ore:ingotSteel>, <ore:plateSteel>, <ore:ingotSteel>],
	[<ore:plateSteel>, <minecraft:hopper>, <ore:plateSteel>],
	[<ore:ingotSteel>, <ore:plateSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<cyclicmagic:fluid_pipe>, [
	[<ore:ingotSteel>, <ore:plateSteel>, <ore:ingotSteel>],
	[<ore:plateSteel>, <minecraft:glass>, <ore:plateSteel>],
	[<ore:ingotSteel>, <ore:plateSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<cyclicmagic:item_pump>, [
	[null, null, null],
	[null, <cyclicmagic:item_pipe>, null],
	[null, <minecraft:heavy_weighted_pressure_plate>, null]]);
recipes.addShaped(<cyclicmagic:fluid_pump>, [
	[null, null, null],
	[null, <cyclicmagic:fluid_pipe>, null],
	[null, <minecraft:heavy_weighted_pressure_plate>, null]]);
recipes.addShaped(<cyclicmagic:energy_pump>, [
	[null, null, null],
	[null, <cyclicmagic:energy_pipe>, null],
	[null, <minecraft:heavy_weighted_pressure_plate>, null]]);
