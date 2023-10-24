import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
// NO COIN MINTING
recipes.remove(<thermalexpansion:augment:336>);
// coin exchanging
recipes.addShapeless("ftx0", <thermalfoundation:coin:0>, [<thermalfoundation:coin:64> * 9]);
recipes.addShapeless("ftx1", <thermalfoundation:coin:1>,[<thermalfoundation:coin:0> * 9]);
recipes.addShapeless("ftx2", <thermalfoundation:coin:70>, [<thermalfoundation:coin:64> * 9]);
recipes.addShapeless("ftx-0", <thermalfoundation:coin:64> * 9,[<thermalfoundation:coin:0>]);
recipes.addShapeless("ftx-1", <thermalfoundation:coin:0> * 9, [<thermalfoundation:coin:1>]);
recipes.addShapeless("ftx-2", <thermalfoundation:coin:64> * 9, [<thermalfoundation:coin:70>]);