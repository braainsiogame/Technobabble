#loader contenttweaker
#priority 9999
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.IItemFoodEaten;
import crafttweaker.potions.IPotion;
function makeFluid(name as string,
                   hexColor as string,
                   gaseous as bool,
                   viscosity as int,
                   rarity as string,
                   luminosity as int) {
    val fluid as Fluid = VanillaFactory.createFluid(name, Color.fromHex(hexColor));
    fluid.gaseous = gaseous;
    fluid.viscosity = viscosity;
    fluid.density = gaseous ? -viscosity : viscosity;
    fluid.rarity = rarity;
    fluid.luminosity = luminosity;
    fluid.register();
}
var steelframeplate = VanillaFactory.createItem("steelframeplate");
steelframeplate.maxStackSize = 64;
steelframeplate.register();

var boulecast = VanillaFactory.createItem("boulecast");
boulecast.maxStackSize = 64;
boulecast.register();
//i stole from nomifactory btw
//        name                          color       gas?    viscosity   rarity      light
makeFluid("moltenunrefinedsilicon",      383838,     false,  10000,      "COMMON",       7);
makeFluid("moltensilicon",               383838,     false,  10000,      "COMMON",       7);