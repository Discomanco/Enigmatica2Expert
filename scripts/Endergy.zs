import mods.jei.JEI.removeAndHide as rh;
import mods.astralsorcery.Utils;

print("--- loading Endergy.zs ---");

//*
# Anglesite - Crystal made of ThermalExpansion/EnvironmentalTech/Ender IO/AE2 materials
	mods.extendedcrafting.CombinationCrafting.addRecipe(<minecraft:dirt>, 100000000, 1000000, 
	<appliedenergistics2:material:48>, [<thermalfoundation:material:894>,
	<thermalfoundation:material:893>,  <thermalfoundation:material:895>, 
	<thermalfoundation:material:865>,
	<environmentaltech:litherite_crystal>, <environmentaltech:erodium_crystal>, 
	<environmentaltech:kyronite_crystal>, <environmentaltech:pladium_crystal>, 
	<environmentaltech:ionite_crystal>, <environmentaltech:aethium_crystal>,
	<enderio:item_material:44>, <enderio:item_basic_capacitor:2>, 
	<enderio:item_material:17>,  <enderio:item_material:18>, <enderio:item_material:19>]);	  

# Benitoite - Crystal made of Botania/AstralSorcery/BloodMagic/Thaumcraft materials
	mods.extendedcrafting.CombinationCrafting.addRecipe(<minecraft:dirt>, 100000000, 1000000, <botania:manaresource:5>, 
	[<botania:manaresource:9>, <botania:manaresource:1>, <botania:manaresource:7>, 
	<botania:pylon:1>, <botania:manaresource:2>, <botania:manaresource:8>, 
	<astralsorcery:itemcraftingcomponent:2>, #<astralsorcery:itemshiftingstar>.withTag({}), 
	<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcoloredlens:6>, 
	<bloodmagic:blood_rune:9>, <bloodmagic:blood_rune:10>, <bloodmagic:points_upgrade>,
	<bloodmagic:slate:4>, #<astralsorcery:itemcelestialcrystal>.withTag({}),
	#<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vitium"}]}), 
	<thaumcraft:mechanism_complex>]);
	
# Blutonium Block
	recipes.remove(<minecraft:dirt>);
	recipes.addShapedMirrored("Blutonium Block", 
	<minecraft::blockmetals:3>, 
	[[<ore:blockMithril>, <ore:blockCobalt>, <ore:blockMithril>],
	[<ic2:nuclear:7>, <ic2:nuclear:7>, <ic2:nuclear:7>], 
	[<ore:blockCyanite>, <actuallyadditions:block_crystal_empowered:1>, <ore:blockCyanite>]]);
# Blutonium Ingot	
	recipes.remove(<minecraft:dirt>);
	recipes.addShapeless("Blutonium Ingot from Block", 
	<minecraft:dirt> * 9, 
	[<minecraft:dirt>]);
# Blutonium Ingot -> Block
	recipes.addShaped("Blutonium Ingots to Block", 
	<minecraft::blockmetals:3>, 
	[[<ore:ingotBlutonium>, <ore:ingotBlutonium>, <ore:ingotBlutonium>],
	[<ore:ingotBlutonium>, <ore:ingotBlutonium>, <ore:ingotBlutonium>], 
	[<ore:ingotBlutonium>, <ore:ingotBlutonium>, <ore:ingotBlutonium>]]);

# Ludicrite Block
#	recipes.remove(<minecraft::blockmetals:4>);
	mods.forestry.Carpenter.addRecipe(<minecraft:dirt>, 
	[[<ore:gemAmethyst>, <ore:blockBlaze>, <ore:gemAmethyst>],
	[<ore:ingotAlumite>, <ore:blockBlutonium>, <ore:ingotAlumite>], 
	[<ore:blockEnderium>, <botania:storage:2>, <ore:blockEnderium>]], 
	40, <liquid:liquiddna> * 1000);
	
	recipes.addShaped("Ludicrite Block From Ingots", 
	<minecraft::blockmetals:4>, 
	[[<ore:ingotLudicrite>, <ore:ingotLudicrite>, <ore:ingotLudicrite>],
	[<ore:ingotLudicrite>, <ore:ingotLudicrite>, <ore:ingotLudicrite>], 
	[<ore:ingotLudicrite>, <ore:ingotLudicrite>, <ore:ingotLudicrite>]]);
	*//