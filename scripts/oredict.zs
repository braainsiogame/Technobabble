#priority 9999
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemTransformer;

var teHammers = [
    <thermalfoundation:tool.hammer_copper>,
    <thermalfoundation:tool.hammer_tin>,
    <thermalfoundation:tool.hammer_silver>,
    <thermalfoundation:tool.hammer_lead>,
    <thermalfoundation:tool.hammer_aluminum>,
    <thermalfoundation:tool.hammer_nickel>,
    <thermalfoundation:tool.hammer_platinum>,
    <thermalfoundation:tool.hammer_steel>,
    <thermalfoundation:tool.hammer_electrum>,
    <thermalfoundation:tool.hammer_invar>,
    <thermalfoundation:tool.hammer_bronze>,
    <thermalfoundation:tool.hammer_constantan>,
    <thermalfoundation:tool.hammer_iron>,
    <thermalfoundation:tool.hammer_diamond>,
    <thermalfoundation:tool.hammer_gold>
] as IItemStack[];
val hammers = <ore:hammers>;
for items in teHammers{
	hammers.add(items);
}
var tanks = [
	<mekanism:machineblock2:11>,
	<thermalexpansion:tank>,
	<enderio:block_tank>,
	<mob_grinding_utils:tank>
] as IItemStack[];
val tankanashihoshino = <ore:tanks>;
for items in tanks {
	tankanashihoshino.add(items);
}

var gears = [
	<thermalfoundation:material:22>,
	<thermalfoundation:material:23>,
    <thermalfoundation:material:24>,
	<thermalfoundation:material:25>,
	<thermalfoundation:material:26>,
	<thermalfoundation:material:27>,
	<thermalfoundation:material:256>,
	<thermalfoundation:material:257>,
	<thermalfoundation:material:258>,
	<thermalfoundation:material:259>,
	<thermalfoundation:material:260>,
	<thermalfoundation:material:261>,
	<thermalfoundation:material:262>,
	<thermalfoundation:material:263>,
	<thermalfoundation:material:264>,
	<thermalfoundation:material:288>,
	<thermalfoundation:material:289>,
	<thermalfoundation:material:290>,
	<thermalfoundation:material:291>,
	<thermalfoundation:material:292>,
	<thermalfoundation:material:293>,
	<thermalfoundation:material:294>,
	<thermalfoundation:material:295>
	] as IItemStack[];
for items in gears {
	recipes.remove(items);
	<ore:gears>.add(items);
}
