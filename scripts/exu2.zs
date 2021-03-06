import crafttweaker.item.IItemStack;
import scripts._func.disable;
import crafttweaker.oredict.IOreDictEntry;

mods.jei.JEI.hideCategory("xu2_machine_extrautils2:crusher");

val triCobble = <extrautils2:compressedcobblestone:2>;
val quadCobble = <extrautils2:compressedcobblestone:3>;
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped(<extrautils2:teleporter:1>,
[[triCobble,quadCobble,triCobble],
 [quadCobble,triCobble,quadCobble],
 [triCobble,quadCobble,triCobble]]);

<extrautils2:cursedearth>.addTooltip(format.green("Works properly in the antimatter dimension"));
<extrautils2:ingredients:10>.addTooltip(format.green("Works properly in the antimatter dimension"));


val furnaceGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
val netherGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"});
recipes.remove(netherGen);
recipes.addShaped(netherGen,
[[<minecraft:nether_star>,<minecraft:nether_star>,<minecraft:nether_star>],
 [<minecraft:nether_star>,<singularities:singularity:39>,<minecraft:nether_star>],
 [<avaritia:singularity:3>, furnaceGen, <avaritia:singularity:3>]]);

<ore:pink>.add(mods.alchemistry.Util.get("methane"));
<ore:pink>.add(mods.alchemistry.Util.get("magnesium oxide"));

disable(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));

recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator>,
[[<deepmoblearning:soot_covered_redstone>,<minecraft:coal_block>,<deepmoblearning:soot_covered_redstone>],
 [<ore:ingotAluminum>,<extrautils2:ingredients>,<ore:ingotAluminum>],
 [<ore:ingotAluminum>,<ore:ingotAntimony>,<ore:ingotAluminum>]]);