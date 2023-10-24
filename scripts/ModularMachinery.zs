import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

//<thermalfoundation:material:512>  servo
//<thermalfoundation:material:513>  reception
//<thermalfoundation:material:514>  tranmission
//<thermalfoundation:material:515>  condutance

recipes.remove(<thermalfoundation:material:512>); //servo
recipes.remove(<thermalfoundation:material:513>); //reception
recipes.remove(<thermalfoundation:material:514>); // tranmission
recipes.remove(<thermalfoundation:material:515>); // condutance
recipes.remove(<thermalexpansion:frame:0>); //machine
recipes.remove(<thermalexpansion:frame:64>); //device

//mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime);
val redstoneServo = mods.modularmachinery.RecipeBuilder.newBuilder("redstoneServo", "assemblermachine", 180);
	redstoneServo.addItemInput(<minecraft:redstone> * 2);
	redstoneServo.addItemInput(<minecraft:iron_ingot>);
	redstoneServo.addItemOutput(<thermalfoundation:material:512>);
	redstoneServo.addEnergyPerTickInput(200);
	redstoneServo.build();
	
val redstoneReception = mods.modularmachinery.RecipeBuilder.newBuilder("redstoneReception", "assemblermachine", 180);
	redstoneReception.addItemInput(<minecraft:redstone> * 2);
	redstoneReception.addItemInput(<minecraft:gold_ingot>);
	redstoneReception.addItemOutput(<thermalfoundation:material:513>);
	redstoneReception.addEnergyPerTickInput(200);
	redstoneReception.build();
	
val redstoneTranmission = mods.modularmachinery.RecipeBuilder.newBuilder("redstoneTranmission", "assemblermachine", 180);
	redstoneTranmission.addItemInput(<minecraft:redstone> * 2);
	redstoneTranmission.addItemInput(<ore:ingotSilver>);
	redstoneTranmission.addItemOutput(<thermalfoundation:material:514>);
	redstoneTranmission.addEnergyPerTickInput(200);
	redstoneTranmission.build();
	
val redstoneCondutance = mods.modularmachinery.RecipeBuilder.newBuilder("redstoneCondutance", "assemblermachine", 180);
	redstoneCondutance.addItemInput(<minecraft:redstone> * 2);
	redstoneCondutance.addItemInput(<ore:ingotElectrum>);
	redstoneCondutance.addItemOutput(<thermalfoundation:material:515>);
	redstoneCondutance.addEnergyPerTickInput(200);
	redstoneCondutance.build();
	
val MachineFrame = mods.modularmachinery.RecipeBuilder.newBuilder("MachineFrame", "assemblermachine", 270);
	MachineFrame.addItemInput(<ore:gearTin>);
	MachineFrame.addItemInput(<minecraft:iron_ingot> * 4);
	MachineFrame.addItemInput(<mekanism:basicblock:8>);
	MachineFrame.addItemOutput(<thermalexpansion:frame:0>);
	MachineFrame.addEnergyPerTickInput(200);
	MachineFrame.build();

val DeviceFrame = mods.modularmachinery.RecipeBuilder.newBuilder("DeviceFrame", "assemblermachine", 270);
	DeviceFrame.addItemInput(<ore:gearCopper>);
	DeviceFrame.addItemInput(<ore:ingotTin>, 4);
	DeviceFrame.addItemInput(<mekanism:basicblock:8>);
	DeviceFrame.addItemOutput(<thermalexpansion:frame:64>);
	DeviceFrame.addEnergyPerTickInput(200);
	DeviceFrame.build();

val BasicUniversalCable = mods.modularmachinery.RecipeBuilder.newBuilder("redstoneCondutance", "assemblermachine", 60);
	BasicUniversalCable.addItemInput(<ore:plateSteel>, 2);
	BasicUniversalCable.addItemInput(<ore:ingotConductiveIron>);
	BasicUniversalCable.addItemOutput(<mekanism:transmitter:0> * 8);
	BasicUniversalCable.addEnergyPerTickInput(200);
	BasicUniversalCable.build();
// i think i fucked up
// i misspelled 