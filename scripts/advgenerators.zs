import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemTransformer;
import mods.appliedenergistics2.Grinder;

// don't mind me i'm just being sure

<ore:circuitBasic>.add(<advgenerators:controller>);
// no easy t1 circuit for you
recipes.remove(<advgenerators:controller>);
function surroundanitem(surrounder as IItemStack,
						encircled as IItemStack,
						output as IItemStack){
	recipes.remove(output);
	recipes.addShaped(output, [
	[surrounder, surrounder, surrounder],
	[surrounder, encircled, surrounder],
	[surrounder, surrounder, surrounder]]);
}
surroundanitem(<advgenerators:turbine_blade_iron>, <mekanismgenerators:generator:7>, <advgenerators:turbine_rotor_iron>);
surroundanitem(<advgenerators:turbine_blade_steel>, <mekanismgenerators:generator:7>, <advgenerators:turbine_rotor_steel>);
surroundanitem(<advgenerators:turbine_blade_bronze>, <mekanismgenerators:generator:7>, <advgenerators:turbine_rotor_bronze>);
surroundanitem(<advgenerators:turbine_blade_manyullyn>, <mekanismgenerators:generator:7>, <advgenerators:turbine_rotor_manyullyn>);
surroundanitem(<advgenerators:turbine_blade_enderium>, <mekanismgenerators:generator:7>, <advgenerators:turbine_rotor_enderium>);
// now time for the main parts
recipes.remove(<advgenerators:turbine_controller>);
recipes.remove(<advgenerators:steam_turbine_controller>);
recipes.remove(<advgenerators:efficiency_upgrade_tier1>);
recipes.remove(<advgenerators:efficiency_upgrade_tier2>);
recipes.remove(<advgenerators:pressure_valve>);
recipes.remove(<advgenerators:advanced_pressure_valve>);
recipes.remove(<advgenerators:iron_frame>);

recipes.addShapeless("iron frame", <advgenerators:iron_frame> * 2, [<ore:itemQuartzKnife>.transformDamage(5), <ore:plateIron>]);
recipes.addShaped(<advgenerators:turbine_controller>, [
	[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],
	[<minecraft:iron_ingot>, <ore:circuitBasic>, <minecraft:iron_ingot>],
	[<minecraft:iron_ingot>, <advgenerators:pressure_valve>, <minecraft:iron_ingot>]]);
recipes.addShapeless(<advgenerators:steam_turbine_controller>, [<advgenerators:turbine_controller>]);
recipes.addShapeless(<advgenerators:turbine_controller>, [<advgenerators:steam_turbine_controller>]);
recipes.addShaped(<advgenerators:pressure_valve>, [
	[<minecraft:iron_ingot>, <ore:plateIron>, <minecraft:iron_ingot>],
	[<ore:plateIron>, null, <ore:plateIron>],
	[<minecraft:iron_ingot>, <ore:plateIron>, <minecraft:iron_ingot>]]);
recipes.addShaped(<advgenerators:advanced_pressure_valve>, [
	[<ore:ingotAluminum>, <advgenerators:pressure_valve>, <ore:ingotAluminum>],
	[<ore:plateIron>, <ore:circuitBasic>, <minecraft:iron_ingot>],
	[<ore:ingotAluminum>, <advgenerators:pressure_valve>, <ore:ingotAluminum>]]);
recipes.addShaped(<advgenerators:efficiency_upgrade_tier1>, [
	[<advgenerators:iron_frame>, <advgenerators:pressure_valve>, <advgenerators:iron_frame>],
	[<ore:plateIron>, <ore:circuitBasic>, <minecraft:iron_ingot>],
	[<advgenerators:iron_frame>, <advgenerators:pressure_valve>, <advgenerators:iron_frame>]]);
recipes.addShaped(<advgenerators:efficiency_upgrade_tier2>, [
	[<advgenerators:iron_frame>, <advgenerators:advanced_pressure_valve>, <advgenerators:iron_frame>],
	[<ore:plateIron>, <ore:circuitBasic>, <minecraft:iron_ingot>],
	[<advgenerators:iron_frame>, <advgenerators:advanced_pressure_valve>, <advgenerators:iron_frame>]]);
		



