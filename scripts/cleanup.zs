import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
/* removing advanced rocketry junks */
val gunAmmo = <ore:pneumaticGunAmmo>;
val ARDust = [<libvulpes:productdust>, <libvulpes:productdust:1>, <libvulpes:productdust:3>, <libvulpes:productdust:4>, <libvulpes:productdust:5>, <libvulpes:productdust:6>, <libvulpes:productdust:7>, <libvulpes:productdust:8>,  <libvulpes:productdust:9>,  <libvulpes:productdust:10>] as IItemStack[];
for dust in ARDust {
 mods.jei.JEI.removeAndHide(dust);
}
/*clean up ae2 facade (still craftable) (i copied this code from nomifactory)*/
val ae2 as IMod = loadedMods["appliedenergistics2"];
if(!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if(item.displayName has "Cable Facade") {
            if(item.displayName has "Block of Neutronium") {
                item.addTooltip(format.darkAqua("Facades can be crafted from most blocks, but are hidden from JEI to reduce clutter"));
            }
            else {
               mods.jei.JEI.hide(item); 
            }
        }
    }
}
//clutter pt2
for item in gunAmmo.items{
	 mods.jei.JEI.removeAndHide(item);
	 }