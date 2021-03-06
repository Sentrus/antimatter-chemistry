import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;


val white = <minecraft:concrete>;
val orange = <minecraft:concrete:1>;
val magenta = <minecraft:concrete:2>;
val lightBlue = <minecraft:concrete:3>;
val yellow = <minecraft:concrete:4>;
val lime = <minecraft:concrete:5>;
val pink = <minecraft:concrete:6>;
val gray = <minecraft:concrete:7>;
val lightGray = <minecraft:concrete:8>;
val cyan = <minecraft:concrete:9>;
val purple = <minecraft:concrete:10>;
val blue = <minecraft:concrete:11>;
val brown = <minecraft:concrete:12>;
val green = <minecraft:concrete:13>;
val red = <minecraft:concrete:14>;
val black = <minecraft:concrete:15>;


white.displayName = "White Antimatter";
orange.displayName = "Orange Antimatter";
magenta.displayName = "Magenta Antimatter";
lightBlue.displayName = "Light Blue Antimatter";
yellow.displayName = "Yellow Antimatter";
lime.displayName = "Lime Antimatter";
pink.displayName = "Pink Antimatter";
gray.displayName = "Gray Antimatter";
lightGray.displayName = "Light Gray Antimatter";
cyan.displayName = "Cyan Antimatter";
purple.displayName = "Purple Antimatter";
blue.displayName = "Blue Antimatter";
brown.displayName = "Brown Antimatter";
green.displayName = "Green Antimatter";
red.displayName = "Red Antimatter";
black.displayName = "Black Antimatter";


val carbon = mods.alchemistry.Util.get("carbon");
val copper = mods.alchemistry.Util.get("copper");
val ironOxide = mods.alchemistry.Util.get("iron oxide");
val tungsten = mods.alchemistry.Util.get("tungsten");
val magnesium = mods.alchemistry.Util.get("magnesium");
val gallium = mods.alchemistry.Util.get("gallium");
val niobium = mods.alchemistry.Util.get("niobium");
val sulfur = mods.alchemistry.Util.get("sulfur");
val neon = mods.alchemistry.Util.get("neon");
val argon = mods.alchemistry.Util.get("argon");
val iodine = mods.alchemistry.Util.get("iodine");
val barium = mods.alchemistry.Util.get("barium");
val neodymium = mods.alchemistry.Util.get("neodymium");
val rubidium = mods.alchemistry.Util.get("rubidium");

recipes.addShaped(orange*8,
[[white,white,white],
 [white,copper,white],
 [white,white,white]]);

recipes.addShaped(red*8,
[[white,white,white],
 [white,ironOxide,white],
 [white,white,white]]);

recipes.addShaped(gray*8,
[[white,white,white],
 [white,tungsten,white],
 [white,white,white]]);

recipes.addShaped(pink*8,
[[white,white,white],
 [white,magnesium,white],
 [white,white,white]]);

recipes.addShaped(black*8,
[[white,white,white],
 [white,carbon,white],
 [white,white,white]]);

 recipes.addShaped(green*8,
[[white,white,white],
 [white,rubidium,white],
 [white,white,white]]);

 recipes.addShaped(brown*8,
[[white,white,white],
 [white,neodymium,white],
 [white,white,white]]);

recipes.addShaped(blue*8,
[[white,white,white],
 [white,argon,white],
 [white,white,white]]);

recipes.addShaped(purple*8,
[[white,white,white],
 [white,iodine,white],
 [white,white,white]]);

recipes.addShaped(cyan*8,
[[white,white,white],
 [white,barium,white],
 [white,white,white]]);

recipes.addShaped(lime*8,
[[white,white,white],
 [white,neon,white],
 [white,white,white]]);

recipes.addShaped(yellow*8,
[[white,white,white],
 [white,sulfur,white],
 [white,white,white]]);

recipes.addShaped(lightBlue*8,
[[white,white,white],
 [white,niobium,white],
 [white,white,white]]);

recipes.addShaped(magenta*8,
[[white,white,white],
 [white,gallium,white],
 [white,white,white]]);



val blazePowder = <minecraft:blaze_powder>;
recipes.addShapeless(<minecraft:blaze_rod>,
[blazePowder,blazePowder,blazePowder,blazePowder,blazePowder]);

val pyroDust = <thermalfoundation:material:1024>;
recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:creeper"}}),
[[<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>],
 [<minecraft:gunpowder>, pyroDust,<minecraft:gunpowder>],
 [<minecraft:gunpowder>,<minecraft:egg>,<minecraft:gunpowder>]]);

recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:skeleton"}}),
[[<minecraft:bone>,<minecraft:bone>,<minecraft:bone>],
 [<minecraft:bone>, pyroDust, <minecraft:bone>],
 [<minecraft:bone>,<minecraft:egg>,<minecraft:bone>]]);

recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie"}}),
[[<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>],
 [<minecraft:rotten_flesh>, pyroDust, <minecraft:rotten_flesh>],
 [<minecraft:rotten_flesh>,<minecraft:egg>,<minecraft:rotten_flesh>]]);

recipes.remove(<minecraft:nether_star>);
recipes.addShapeless(<minecraft:nether_star>*9, [<tp:netherstar_block>]);

recipes.addShapeless(<ftbquests:book>,[<minecraft:reeds>,<minecraft:stone>]);

for i in 0 to 16 {
	scripts._func.disable(<minecraft:concrete_powder>.definition.makeStack(i));
}

val pulverizedCharcoal = <thermalfoundation:material:769>;
<ore:dyeBlack>.add(pulverizedCharcoal);

recipes.addShapeless(<minecraft:clay_ball>*4,[<minecraft:clay>]);

mods.jei.JEI.removeAndHide(<appliedenergistics2:material:5>);
mods.jei.JEI.removeAndHide(<refinedstorage:silicon>);

furnace.remove(<refinedstorage:silicon>);
furnace.remove(<appliedenergistics2:material:5>);

furnace.addRecipe(<nuclearcraft:gem:6>,<minecraft:quartz>);
furnace.addRecipe(<nuclearcraft:gem:6>,<ore:dustQuartz>);
furnace.addRecipe(<nuclearcraft:gem:6>,<ore:dustCertusQuartz>);

recipes.remove(<minecraft:end_rod>);
recipes.addShaped(<minecraft:end_rod>,
[[<minecraft:blaze_rod>],
 [<minecraft:chorus_fruit_popped>],
 [<ore:ingotAmericium>]]);