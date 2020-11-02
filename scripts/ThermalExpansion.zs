import crafttweaker.item.IItemStack;
#modloaded thermalexpansion
#modloaded contenttweaker
print("--- loading ThermalExpansion.zs ---");

# Canola Oil Changes	
	mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:refinedcanolaoil>);
	mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:crystaloil>);
	mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:empoweredoil>);

	mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:refinedcanolaoil>, 250000);
	mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:crystaloil>, 1000000);
	mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:empoweredoil>, 1750000);

# Rocket Fuel Compatibility
	mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:rocket_fuel>, 2000000);
	
# AA Oil Generator -> Compression Dynamo
	recipes.addShapeless(<thermalexpansion:dynamo:2>, [<actuallyadditions:block_oil_generator>]);

	mods.thermalexpansion.NumisticDynamo.addGemFuel(<actuallyadditions:item_misc:5>, 40000);
	mods.thermalexpansion.NumisticDynamo.addGemFuel(<astralsorcery:itemcraftingcomponent:0>, 80000);
	mods.thermalexpansion.NumisticDynamo.addGemFuel(<appliedenergistics2:material:0>, 60000);
	mods.thermalexpansion.NumisticDynamo.addGemFuel(<appliedenergistics2:material:1>, 60000);
	mods.thermalexpansion.NumisticDynamo.addGemFuel(<appliedenergistics2:material:10>, 30000);
	mods.thermalexpansion.NumisticDynamo.addGemFuel(<darkutils:shulker_pearl>, 5000);

# Essence of Knowledge XP Compatibility (credit RedGoblin88)
	mods.thermalexpansion.Crucible.addRecipe(<liquid:experience> * 200, <mysticalagriculture:xp_droplet>, 4000);
	mods.thermalexpansion.Crucible.addRecipe(<liquid:experience> * 200, <mysticalagriculture:experience_essence>, 4000);

# Nullifier 
	recipes.remove(<thermalexpansion:device:1>);
	recipes.addShaped("Nullifier", 
	<thermalexpansion:device:1>, 
	[[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
	[<ore:ingotTin>, <extrautils2:trashcan>, <ore:ingotTin>], 
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);

# Igneous Extruder
	recipes.remove(<thermalexpansion:machine:15>);
	recipes.addShaped("Igneous Extruder", 
	<thermalexpansion:machine:15>, 
	[[null, <ore:blockGlass>, null],
	[<ore:ingotInvar>, <thermalexpansion:frame:64>, <ore:ingotInvar>], 
	[<ore:gearCopper>, <immersiveengineering:metal_decoration0>, <ore:gearCopper>]]);

# Reinforced Cell Frame (Empty)
	recipes.addShapedMirrored("Reinforced Cell Frame", 
	<thermalexpansion:frame:130>, 
	[[<ore:gearSilver>, <thermalfoundation:material:515>, <ore:gearSilver>],
	[<ore:plateElectrumFlux>, <thermalexpansion:frame:129>, <ore:plateElectrumFlux>], 
	[<ore:gemCrystalFlux>, <tconstruct:large_plate>.withTag({Material: "electrum"}), <ore:gemCrystalFlux>]]);

# Reinforced Cell Frame (Full)
	mods.thermalexpansion.Transposer.addFillRecipe(<thermalexpansion:frame:146>, <thermalexpansion:frame:130>, <liquid:lumium> * 576, 250000);

# Signalum Cell Frame (Empty)
	recipes.addShapedMirrored("Signalum Cell Frame Empty", 
	<thermalexpansion:frame:131>, 
	[[<ore:plateSignalum>, <ore:crystalCinnabar>, <ore:plateSignalum>],
	[<thermalfoundation:material:832>, <thermalexpansion:frame:146>, <thermalfoundation:material:832>], 
	[<ore:plateSignalum>, <ore:crystalSlagRich>, <ore:plateSignalum>]]);

# Signalum Cell Frame (Full)
	mods.thermalexpansion.InductionSmelter.addRecipe(<thermalexpansion:frame:147>, <thermalexpansion:frame:131>, <minecraft:redstone_block> * 40, 100000);

# Resonant Cell Frame (Empty)
	mods.forestry.ThermionicFabricator.addCast(<thermalexpansion:frame:132>, 
	[[<thermalfoundation:material:166>, <actuallyadditions:block_misc:8>, <thermalfoundation:material:166>],
	[<thermalfoundation:glass_alloy:7>, <thermalexpansion:frame:147>, <thermalfoundation:glass_alloy:7>],
	[<thermalfoundation:material:1028>, <thermalfoundation:material:1028>, <thermalfoundation:material:1028>]], <liquid:glass> * 4000);

# Resonant Cell Frame (Full)
	mods.extendedcrafting.CombinationCrafting.addRecipe(<thermalexpansion:frame:148>, 
	100000000, 1000000, 
	<thermalexpansion:frame:132>, 
	[<gendustry:genetics_processor>, <extrautils2:ingredients:5>, <ic2:plate:16>,
	<ic2:lapotron_crystal>.anyDamage(), <forestry:thermionic_tubes:12>, <forestry:crafting_material:1>,
	<mekanismgenerators:reactor:1>, <environmentaltech:structure_frame_1>, <rftools:infused_diamond>,
	<mekanism:controlcircuit:3>, <thermalfoundation:material:295>, <environmentaltech:litherite_crystal>,
	<nuclearcraft:part:6>, <nuclearcraft:gem:1>]);
	
# Mana Dust
	recipes.addShapedMirrored("Mana Dust", 
	<thermalfoundation:material:1028> * 2, 
	[[<ore:manaDiamond>, <ore:dustCryotheum>, <ore:manaDiamond>],
	[<ore:dustPyrotheum>, <ore:powderMana>, <ore:dustAerotheum>], 
	[<ore:manaDiamond>, <ore:dustPetrotheum>, <ore:manaDiamond>]]);

# Centrifugal Seperator
	recipes.remove(<thermalexpansion:machine:10>);
	recipes.addShaped("Centrifugal Seperator", 
	<thermalexpansion:machine:10>, 
	[[null, <forestry:centrifuge>, null],
	[<ore:ingotConstantan>, <thermalexpansion:frame>, <ore:ingotConstantan>], 
	[<ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>]]);

# Fluid Transposer
	recipes.remove(<thermalexpansion:machine:8>);
	recipes.addShaped("Fluid Transposer", 
	<thermalexpansion:machine:8>, 
	[[<thermalexpansion:tank>, <forestry:carpenter>, <thermalexpansion:tank>],
	[<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], 
	[<ore:gearInvar>, <thermalfoundation:material:513>, <ore:gearInvar>]]);

# Sawmill
	recipes.remove(<thermalexpansion:machine:2>);
	recipes.addShaped("Sawmill", 
	<thermalexpansion:machine:2>, 
	[[null, <mekanism:machineblock2:5>, null],
	[<ore:logWood>, <thermalexpansion:frame>, <ore:logWood>], 
	[<ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>]]);

# Pulverizer
	recipes.remove(<thermalexpansion:machine:1>);
	recipes.addShaped("Pulverizer", 
	<thermalexpansion:machine:1>, 
	[[<ore:craftingPiston>, <actuallyadditions:block_grinder>, <ore:craftingPiston>],
	[<tconstruct:large_plate>.withTag({Material: "flint"}), <thermalexpansion:frame>, <tconstruct:large_plate>.withTag({Material: "flint"})], 
	[<ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>]]);
	
	recipes.addShaped("Pulverizer2", 
	<thermalexpansion:machine:1>, 
	[[<ore:craftingPiston>, <actuallyadditions:block_grinder_double>, <ore:craftingPiston>],
	[<tconstruct:large_plate>.withTag({Material: "flint"}), <thermalexpansion:frame>, <tconstruct:large_plate>.withTag({Material: "flint"})], 
	[<ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>]]);

# Primal Mana
	mods.tconstruct.Alloy.addRecipe(<liquid:mana> * 125, [<liquid:mirion> * 18, <liquid:osgloglas> * 18, <liquid:ic2coolant> * 125]);

# Mana Infused Ingot&Block
	mods.mekanism.infuser.addRecipe("DIAMOND", 20, <botania:manaresource>, <thermalfoundation:material:136>);
	mods.mekanism.infuser.addRecipe("DIAMOND", 160, <botania:storage>, <thermalfoundation:storage:8>);

# Energy Cell Frame
	recipes.remove(<thermalexpansion:frame:128>);
	mods.mekanism.infuser.addRecipe("REDSTONE", 400, <thermalexpansion:frame>, <thermalexpansion:frame:128>);

# Machine Frame
	recipes.remove(<thermalexpansion:frame>);
	mods.forestry.ThermionicFabricator.addCast(<thermalexpansion:frame> * 2, 
	[[<actuallyadditions:item_crystal:5>, <rftools:machine_frame>, <actuallyadditions:item_crystal:5>],
	[<immersiveengineering:metal_decoration0:5>, <thermalexpansion:frame:64>, <actuallyadditions:block_misc:9>], 
	[<actuallyadditions:item_crystal:5>, <teslacorelib:machine_case>, <actuallyadditions:item_crystal:5>]], 
	<liquid:glass> * 6000);
	
# Removing craftable Bronze 
	recipes.removeShapeless(<thermalfoundation:material:163> * 4, 
	[<ore:ingotTin>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]);

# Redstone Reception Coil
	recipes.remove(<thermalfoundation:material:513>);
	mods.actuallyadditions.AtomicReconstructor.addRecipe(<thermalfoundation:material:513> * 1, <immersiveengineering:metal_decoration0>, 25000);
	mods.mekanism.infuser.addRecipe("REDSTONE", 160, <minecraft:gold_ingot>, <thermalfoundation:material:513>);

# Redstone Transmission Coil
	recipes.remove(<thermalfoundation:material:514>);
	mods.actuallyadditions.AtomicReconstructor.addRecipe(<thermalfoundation:material:514>, <immersiveengineering:wirecoil:2>, 5000);
	mods.mekanism.infuser.addRecipe("REDSTONE", 160, <thermalfoundation:material:130>, <thermalfoundation:material:514>);
	
# Redstone Conductance Coil
	recipes.remove(<thermalfoundation:material:515>);
	mods.actuallyadditions.AtomicReconstructor.addRecipe(<thermalfoundation:material:515> * 1, <immersiveengineering:metal_decoration0:1>, 25000);
	mods.mekanism.infuser.addRecipe("REDSTONE", 160, <thermalfoundation:material:161>, <thermalfoundation:material:515>);

# Removing Netherrack -> Gravel Pulverizer recipes
	mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:netherrack>);

# Making TE alloys meltable
	mods.thermalexpansion.Crucible.addRecipe(<liquid:signalum> * 144, <thermalfoundation:material:165>, 5000);
	mods.thermalexpansion.Crucible.addRecipe(<liquid:lumium> * 144, <thermalfoundation:material:166>, 5000);
	mods.thermalexpansion.Crucible.addRecipe(<liquid:enderium> * 144, <thermalfoundation:material:167>, 5000);

# Signalum Ingots
	mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:165>, <nuclearcraft:alloy:7>, <liquid:redstone> * 250, 5000);
	mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:7> * 4, <thermalfoundation:material:130>, <thermalfoundation:material:128> * 3, 15000);

# Lumium Ingots
	mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:166>, <nuclearcraft:alloy:8>, <liquid:glowstone> * 250, 5000);
	mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:8> * 4, <thermalfoundation:material:130>, <thermalfoundation:material:129> * 3, 20000);

# Enderium Ingots
	mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:167>, <nuclearcraft:alloy:9>, <liquid:ender> * 250, 10000);
	mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:9> * 4, <thermalfoundation:material:134>, <thermalfoundation:material:131> * 3, 25000);

# Hardened Cell Frame
	mods.actuallyadditions.Empowerer.addRecipe(<thermalexpansion:frame:129>, <thermalexpansion:frame:128>, <immersiveengineering:material:2>, <thermalfoundation:material:354>, <thermalfoundation:material:290>, <mekanism:basicblock:8>, 2500000, 200, [0.25, 0.25, 0.29]);

# Peridot dropping Malachite
	mods.thermalexpansion.Pulverizer.removeRecipe(<netherendingores:ore_nether_modded_2:3>);
	mods.thermalexpansion.Pulverizer.removeRecipe(<netherendingores:ore_end_modded_2:3>);
	mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:peridot> * 3, <netherendingores:ore_nether_modded_2:3>, 1920, <contenttweaker:malachite>, 150);
  
  
	
# Resonant Upgrade Kit
	recipes.remove(<thermalfoundation:upgrade:3>);
	recipes.addShapedMirrored("Resonant Upgrade Kit",
	<thermalfoundation:upgrade:3>,
	[[null,<ore:ingotEnderium>,null],
	[<ore:clathrateEnder>,<thermalfoundation:upgrade:2>,<ore:clathrateEnder>],
	[<ore:dustPyrotheum>,<ore:ingotEnderium>,<ore:dustPyrotheum>]]);
	
# Signalum Upgrade Kit
	recipes.remove(<thermalfoundation:upgrade:2>);
	recipes.addShapedMirrored("Signalum Upgrade Kit",
	<thermalfoundation:upgrade:2>,
	[[null,<ore:ingotSignalum>,null],
	[<ore:plateElite>,<thermalfoundation:upgrade:1>,<ore:plateElite>],
	[<ore:dustCryotheum>,<ore:ingotSignalum>,<ore:dustCryotheum>]]);
	
# Reinforced Upgrade Kit
	recipes.remove(<thermalfoundation:upgrade:1>);
	recipes.addShapedMirrored("Reinforced Upgrade Kit",
	<thermalfoundation:upgrade:1>,
	[[null,<ore:ingotElectrum>,null],
	[<ore:ingotElectrum>,<thermalfoundation:upgrade>,<ore:ingotElectrum>],
	[<ore:blockGlassHardened>,<ore:ingotElectrum>,<ore:blockGlassHardened>]]);

# Tank upgrade recipes, with keeping NBT. Upgrade kits can still be used
	recipes.addShaped("tankup1", <thermalexpansion:tank>.withTag({Level: 1}),
	[[null,<ore:nuggetTin>,null],
	[<ore:ingotInvar>,<thermalexpansion:tank>.onlyWithTag({Level: 0}).marked("tank1"), <ore:ingotInvar>],
	[<ore:nuggetTin>,null,<ore:nuggetTin>]],
		function(out, ins, cInfo){
			return ins.tank1.updateTag({Level: 1});
		},null);
	recipes.addShaped("tankup2", <thermalexpansion:tank>.withTag({Level: 2}),
	[[null,<ore:nuggetInvar>,null],
	[<ore:ingotElectrum>,<thermalexpansion:tank>.withTag({Level: 1}, true).marked("tank2"), <ore:ingotElectrum>],
	[<ore:nuggetInvar>,null,<ore:nuggetInvar>]],
		function(out, ins, cInfo){
			return ins.tank2.updateTag({Level: 2});
		},null);
	recipes.addShaped("tankup3", <thermalexpansion:tank>.withTag({Level: 3}),
	[[null,<ore:nuggetElectrum>,null],
	[<ore:ingotSignalum>,<thermalexpansion:tank>.withTag({Level: 2}, true).marked("tank3"), <ore:ingotSignalum>],
	[<ore:nuggetElectrum>,null,<ore:nuggetElectrum>]],
		function(out, ins, cInfo){
			return ins.tank3.updateTag({Level: 3});
		},null);
	recipes.addShaped("tankup4", <thermalexpansion:tank>.withTag({Level: 4}),
	[[null,<ore:nuggetSignalum>,null],
	[<ore:ingotEnderium>,<thermalexpansion:tank>.withTag({Level: 3}, true).marked("tank4"), <ore:ingotEnderium>],
	[<ore:nuggetSignalum>,null,<ore:nuggetSignalum>]],
		function(out, ins, cInfo){
			return ins.tank4.updateTag({Level: 4});
		},null);

	mods.jei.JEI.addItem(<thermalexpansion:tank>.withTag({Level: 1}));
	mods.jei.JEI.addItem(<thermalexpansion:tank>.withTag({Level: 2}));
	mods.jei.JEI.addItem(<thermalexpansion:tank>.withTag({Level: 3}));
	mods.jei.JEI.addItem(<thermalexpansion:tank>.withTag({Level: 4}));
	


		print("--- ThermalExpansion.zs initialized ---");
