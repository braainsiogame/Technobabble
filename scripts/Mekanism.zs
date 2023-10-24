import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import mods.appliedenergistics2.Inscriber;
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit:0>);
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
mods.mekanism.infuser.removeRecipe(<mekanism:enrichediron>);
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:1>);
Inscriber.addRecipe(<pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:2>, false, <mekanism:ingot:1>, <appliedenergistics2:material:17>);
Inscriber.addRecipe(<mekanism:controlcircuit:0>, <pneumaticcraft:printed_circuit_board>, false,  <appliedenergistics2:material:22>, <appliedenergistics2:material:23>);
mods.tconstruct.Casting.addTableRecipe(<mekanism:enrichedalloy>, <minecraft:iron_ingot>, <liquid:redstone>, 1000, true, 360);
// early game transmitter
recipes.removeByRecipeName("mekanism:transmitter_0");
recipes.removeByRecipeName("mekanism:transmitter_0_alt");
recipes.removeByRecipeName("mekanism:transmitter_0_alt_alt");
recipes.removeByRecipeName("mekanism:transmitter_0_alt_alt_alt");
// lord give me one more chance
for items in <ore:hammers>.items {
recipes.addShaped("transmitter!!!!!!! wooo!!!!!!!!!!!!!!!", <mekanism:transmitter:0>.withTag({tier:0}) * 4, [
	[null, items.anyDamage().marked("bonk"), null],
	[<ore:plateSteel>, <ore:ingotConductiveIron>, <ore:plateSteel>],
	[null, null, null]], 
	function(out, ins, cInfo)
	{
	return ins.bonk.withDamage(max(0, ins.bonk.damage - 1));
	}, null);
}
