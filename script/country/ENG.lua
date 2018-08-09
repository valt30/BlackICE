local P = {}
AI_ENG = P

-- #######################################

-- Tech weights
--   1.0 = 100% the total needs to equal 1.0
function P.TechWeights(voTechnologyData)
	local laTechWeights = {
		0.15, -- landBasedWeight
		0.10, -- landDoctrinesWeight
		0.15, -- airBasedWeight
		0.14, -- airDoctrinesWeight
		0.14, -- navalBasedWeight
		0.05, -- navalDoctrinesWeight
		0.10, -- industrialWeight
		0.02, -- secretWeaponsWeight
		0.15}; -- otherWeight
	
	return laTechWeights
end

-- Techs that are used in the main file to be ignored
--   techname|level (level must be 1-9 a 0 means ignore all levels
--   use as the first tech name the word "all" and it will cause the AI to ignore all the techs
function P.LandTechs(voTechnologyData)
	local lbArmor = voTechnologyData.TechStatus:IsUnitAvailable(CSubUnitDataBase.GetSubUnit("armor_brigade"))
	local ignoreTech
	
	if lbArmor then
		ignoreTech = {
			{"heavy_assault_gun_brigade_activation", 0},
			{"heavy_armor_brigade_design", 0},
			{"super_heavy_tank_design", 0},
			{"interlocked_armour", 0},
			{"spaced_armour", 0},
			{"heavy_tank_destroyer_brigade_activation", 0},
			{"asymmetric_warfare_dev", 0},
			{"improved_police_brigade", 0},
			{"emergency_recruitment_legislation", 0},
			{"sp_rct_art_brigade_design", 0},
			{"rocket_art", 0},
			{"rocket_art_ammo", 0},
			{"officer_recruitment_program", 0},
			{"sp_anti_air_design", 0},
			--{"garrison_deployment", 0},
			{"militia_increase", 0},
			{"infantry_increase", 0},
			{"special_forces_increase", 0},
			{"mobile_increase", 0},
			{"armor_increase", 0},
			{"recon_increase", 0},
			{"artillery_increase", 0},
			{"armorsupport_increase", 0},
			{"aa_at_increase", 0},
			{"engineers_increase", 0},
			{"militia_decrease", 0},
			{"infantry_decrease", 0},
			{"special_forces_decrease", 0},
			{"mobile_decrease", 0},
			{"armor_decrease", 0}, 
			{"recon_decrease", 0},
			{"artillery_decrease", 0},
			{"armorsupport_decrease", 0},
			{"aa_at_decrease", 0},
			{"engineers_decrease", 0},
			{"extreme_terrain_combat_tactics", 0},
			{"airlanding_infantry_brigade_activation", 0},
			{"ski_brigade_activation", 0},
			{"artic_warfare_equipment", 0},
			{"mountain_warfare_equipment", 0},
			{"Tenacious_defense", 0},
			{"urban_Fighting_Equipment_and_Training", 0},
			{"assault_gun_brigade_activation",0}};
	else
		ignoreTech = {
			{"heavy_assault_gun_brigade_activation", 0},
			{"heavy_armor_brigade_design", 0},
			{"super_heavy_tank_design", 0},
			{"interlocked_armour", 0},
			{"spaced_armour", 0},
			{"heavy_tank_destroyer_brigade_activation", 0},
			{"asymmetric_warfare_dev", 0},
			{"improved_police_brigade", 0},
			{"emergency_recruitment_legislation", 0},
			{"sp_rct_art_brigade_design", 0},
			{"militia_increase", 0},
			{"infantry_increase", 0},
			{"special_forces_increase", 0},
			{"mobile_increase", 0},
			{"armor_increase", 0},
			{"recon_increase", 0},
			{"artillery_increase", 0},
			{"armorsupport_increase", 0},
			{"aa_at_increase", 0},
			{"engineers_increase", 0},
			{"militia_decrease", 0},
			{"infantry_decrease", 0},
			{"special_forces_decrease", 0},
			{"mobile_decrease", 0},
			{"armor_decrease", 0}, 
			{"recon_decrease", 0},
			{"artillery_decrease", 0},
			{"armorsupport_decrease", 0},
			{"aa_at_decrease", 0},
			{"engineers_decrease", 0},
			{"extreme_terrain_combat_tactics", 0},
			{"airlanding_infantry_brigade_activation", 0},
			{"ski_brigade_activation", 0},
			{"artic_warfare_equipment", 0},
			{"mountain_warfare_equipment", 0},
			{"rocket_art", 0},
			{"rocket_art_ammo", 0},
			{"officer_recruitment_program", 0},
			{"sp_anti_air_design", 0},
			--{"garrison_deployment", 0},
			{"Tenacious_defense", 0},
			{"urban_Fighting_Equipment_and_Training", 0},
			{"assault_gun_brigade_activation",0}};
	end
	
		
	local preferTech = {
		"light_armor_brigade_design",
		"armor_brigade_design",
		"tank_chassis_design",
		"medium_velocity_gun",
		"artillery_support_gun_design",
		"gasoline_engine_design",
		"Support_battalions_motorization",
		"engineer_bridging_equipment",
		"engineer_brigade_activation",
		"defense_work_designs",
		"heavy_aa_guns",
		"air_defense_network",
		"Artillery_fire_control_technics_dev",
		"tremendous_firepower_dev",
		"small_calibre_gun_design",
		"cast_armour",
		"gun_carriage",
		"range_finding",
		"infantry_activation",
		"light_infantry_brigade_activation",
		"special_forces_upgrade",
		"Vehicle_reliability",
		"semi_motorization",
		"smallarms_technology",
		"infantry_support",
		"infantry_guns",
		"infantry_at",
		"armor_plate_design",
		"art_barrell_ammo"};
		
	return ignoreTech, preferTech
end

function P.LandDoctrinesTechs(voTechnologyData)
	local ignoreTech= {
		{"partisan_suppression", 0},
		{"military_police", 0},
		{"mountain_training", 0},
		{"mountain_command_and_control", 0},
		{"Auftragstaktik", 0},
		{"banzai", 0},
		{"human_wave", 0},
		{"asymmetric_warfare_dev", 0},
		{"mass_assault", 0},
		{"pakfront", 0},
		{"superior_strength", 0},
		{"deep_battle_doctrine", 0},
		{"political_indoctrination", 0},
		{"political_integration ", 0}
		};
	local preferTech = {
		"mass_assault",
		"strongpoint_tactics",
		"assault_concentration",
		"mg_mortar_support",
		"attrition_warfare",
		"central_planning",
		"divisonal_command_structure_grand_battle",
		"Corps_command_structure_grand_battle",
		"army_command_structure_grand_battle",
		"armygroup_command_structure_grand_battle",
		"supreme_command_coordination_grand_battle",
		"logistic_organisation",
		"infrastructure_and_transport_development",
		"special_ops",
		"artillery_flexiblity",
		"time_on_target",
		"infantry_integration",
		"infantry_training",
		"infantry_command_and_control",
		"mobile_integration",
		"mobile_training",
		"mobile_command_and_control",
		"artillery_integration",
		"artillery_training",
		"artillery_command_and_control",
		"special_forces_integration",
		"commando_training",
		"commando_command_and_control",
		"divisonal_command_structure",
		"Corps_command_structure",
		"army_command_structure",
		"armygroup_command_structure",
		"supreme_command_coordination",
		"interservice_HQ_structure",
		"recon_units_integration",
		"recon_coordination",
		"recon_communication",
		"resistance_support"};
	return ignoreTech, preferTech
end

function P.AirTechs(voTechnologyData)
	local ignoreTech = {
		{"air_commando_brigade_activation", 0},
		{"jet_airframe", 0},
		{"rocket_interceptor_tech", 0},
		{"jet_bomber_activation", 0},
		{"jet_engine", 0}};
		
	local preferTech = {
		"engine_boost",
		"self_sealing_fueltanks",
		"air_cooling_sys",
		"advanced_aircraft_development",
		"retractable_undercarriage",
		"aerodyn_fuselage",
		"aerodyn_wings",
		"single_engine_fighter_design",
		"single_engine_airframe",
		"single_engine_aircraft_armament",
		"cas_design",
		"cag_design",
		"cag_fighter",
		"cag_bomber",
		"cag_torpedo",
		"tailhook",
		"folding_wings",
		"basic_bomb",
		"small_bomb",
		"medium_bomb",
		"air_launched_torpedo",
		"light_bomber_design",
		"four_engine_bomber_design",
		"aeroengine",
		"small_fueltank",
		"medium_fueltank",
		"large_fueltank",
		"drop_shaped_cockpit",
		"ammo_capacity",
		"auto_cannons",
		"basic_four_engine_airframe",
		"four_engine_airframe",
		"multirole_fighter_design",
		"twin_engine_fighter_design",
		"naval_bomber_design",
		"strategic_bomber_armament",
		"twin_engine_bomber_crew_layout",
		"twin_engine_airframe",
		"twin_engine_bomber_design",
		"twin_engine_aircraft_armament"
	};
	
	return ignoreTech, preferTech
end

function P.AirDoctrineTechs(voTechnologyData)
	local ignoreTech = {
		{"jet_groundcrew_training", 0},
		{"jet_pilot_training", 0},
		{"forward_air_control", 0},
		{"installation_strike_tactics", 0},
		{"airbase_strike_tactics", 0},
		{"battlefield_interdiction", 0},
		{"airborne_assault_tactics", 0},
		{"cas_pilot_training", 0},
		{"cas_groundcrew_training", 0}};

	local preferTech = {
		"fighter_pilot_training",
		"interception_tactics",
		"ground_attack_tactics",
		"tac_pilot_training",
		"interdiction_tactics",
		"heavy_bomber_pilot_training",
		"heavy_bomber_groundcrew_training",
		"strategic_bombardment_tactics",
		"tactical_air_command"};	
	return ignoreTech, preferTech
end
		
function P.NavalTechs(voTechnologyData)
	local ignoreTech = {
		{"battlecruiser_technology", 0},
		{"pocket_battleship_activation", 0},
		{"battlecruiser_engine", 0},
		{"battlecruiser_armour", 0},
		{"super_heavy_battleship_technology", 0},
        {"submarine_airwarningequipment", 0},
		{"electric_powered_torpedo", 0},
		{"submarine_snorkel", 0},
        {"submarine_electroboat", 0},
        {"milch_submarine", 0}};

	local preferTech = {
		"smallwarship_asw",
		"destroyer_technology",
		"frigate_technology",
		"anti_air_cruiser_activation",
		"destroyer_armament",
		"transport_ship_activation",
		"transport_ship_hull",
		"transport_ship_engine",
		"amphibious_invasion_craft",
		"advanced_invasion_craft",
		"amphibious_invasion_tactics",
		"amphibious_ship_defenses",
		"destroyer_engine",
		"destroyer_armour",
		"carrier_technology",
		"hydrophone_dev",
		"smallwarship_radar",
		"mediumwarship_radar",
		"largewarship_radar",
		"hdfd_radio_dev",
		"depth_charge",
		"hedgehog_dev",
		"asw_counter_measures",
		"midget_submarine_activation",
		"fire_control_computer",
		"AAA_control_computer",
		"lightcruiser_antiaircraft",
		"heavycruiser_antiaircraft",
		"battleship_antiaircraft",
		"carrier_technology",
		"carrier_engine",
		"carrier_armour",
		"light_carrier_technology",
		"escort_carrier_technology",
		"carrier_deck_armour_optimisation",
		"carrier_flight_deck_optimisation",
		"carrier_hanger"};
	
	return ignoreTech, preferTech
end
		
function P.NavalDoctrineTechs(voTechnologyData)
	local ignoreTech = {
		{"fleet_auxiliary_submarine_doctrine", 0},
		{"trade_interdiction_submarine_doctrine", 0},
		{"submarine_crew_training", 0},
		{"unrestricted_submarine_warfare_doctrine", 0}};
	
	local preferTech = {
		"fleet_auxiliary_carrier_doctrine",
		"light_cruiser_escort_role",
		"carrier_group_doctrine",
		"light_cruiser_crew_training",
		"carrier_crew_training",
		"carrier_task_force",
		"naval_underway_replenishment",
		"radar_training",
		"sea_lane_defence",
		"destroyer_escort_role",
		"battlefleet_concentration_doctrine",
		"destroyer_crew_training",
		"battleship_crew_training",
		"commerce_defence",
		"fire_control_system_training",
		"commander_decision_making",
		"cruiser_warfare",
		"cruiser_crew_training",
		"spotting",
		"basing"};
		
	return ignoreTech, preferTech
end

function P.IndustrialTechs(voTechnologyData)
	local ignoreTech = {
		{"submarine_construction_technolgies", 0},
		{"fuel_conservation", 0},
		{"light_weight_construction", 0},
		{"octane_conservation", 0},
		{"atomic_research", 0},
		{"nuclear_research", 0},
		{"isotope_seperation", 0},
		{"civil_nuclear_research", 0}};

	local preferTech = {
		"construction_engineering",
		"supply_transportation",
		"supply_organisation",
		"secretary_of_public_information_and_education",
		"mass_events",
		"monumental_architecture",
		"broadcasting",
		"university",
		"gigant_infrastructure_projects",
		"agriculture",
		"industral_production",
		"industral_efficiency",
		"industry_tech",
		"civil_medicine",
		"Ship_Building_Technologies",
		"long_range_aircraft_production",
		"short_range_aircraft_production",
		"oil_refinning",
		"steel_production",
		"coal_processing_technologies",
		"supply_production",
		"university",
		"raremetal_refinning_techniques",
		"civil_defence",
		"logistical_warfare_focus",
		"home_front_focus",
		"combat_medicine",
		"first_aid",
		"medical_evacuation",
		"secretary_of_public_information_and_education",
		"gigant_infrastructure_projects",
		"broadcasting",
		"monumental_architecture",
		"expand_airbases",
		"Hangar_Maintenance",
		"hardended_airstrip",
		"control_tower",
		"basic_education"};		
	return ignoreTech, preferTech
end
		
function P.SecretWeaponTechs(voTechnologyData)
	local ignoreTech = {}
	
	return ignoreTech, nil
end

function P.OtherTechs(voTechnologyData)
	local ignoreTech = {
			
		{"active_sonar_sub", 0}};
		
	local preferTech = {
		"land_based_radar",
		"radar",
		"small_ship_radar",
		"medium_ship_radar",
		"big_ship_radar",
		"active_sonar",
		"active_sonar_ship",
		"census_tabulation_machine",
		"mechnical_computing_machine",
		"radio",
		"large_navagation_radar",
		"air_radios",
		"large_airsearch_radar"};		

	return ignoreTech, preferTech
end

-- END OF TECH RESEARCH OVERIDES
-- #######################################


-- #######################################
-- Production Overides the main LUA with country specific ones

-- Production Weights
--   1.0 = 100% the total needs to equal 1.0
function P.ProductionWeights(voProductionData)
	local laArray
	
	-- Check to see if manpower is to low
	-- More than 30 brigades so build stuff that does not use manpower
	if (voProductionData.ManpowerTotal < 30 and voProductionData.LandCountTotal > 100)
	or voProductionData.ManpowerTotal < 10 then
		laArray = {
			0.01, -- Land
			0.30, -- Air
			0.45, -- Sea
			0.24}; -- Other	
	elseif voProductionData.Year <= 1939 and not(voProductionData.IsAtWar) then
		laArray = {
			0.25, -- Land
			0.40, -- Air
			0.30, -- Sea
			0.05}; -- Other
	elseif voProductionData.IsAtWar then
		if voProductionData.Year <= 1942 then
			laArray = {
			0.50, -- Land
			0.20, -- Air
			0.25, -- Sea
			0.05}; -- Other
		else
			laArray = {
				0.40, -- Land
				0.25, -- Air
				0.30, -- Sea
				0.05}; -- Other
		end
	else
		laArray = {
			0.40, -- Land
			0.25, -- Air
			0.30, -- Sea
			0.05}; -- Other
	end
	
	return laArray
end

-- Land ratio distribution
function P.LandRatio(voProductionData)
	local laArray

	-- Check to see if manpower is to low
	-- More than 150 brigades so build stuff that does not use manpower
	if (voProductionData.ManpowerTotal < 100 and voProductionData.LandCountTotal > 150)
	or voProductionData.ManpowerTotal < 50 then
		laArray = {
				garrison_brigade = 1,
				semi_motorized_brigade = 3,
				mechanized_brigade = 2,
				armor_brigade = 2}

	elseif voProductionData.IsAtWar then
		local loUSATag = CCountryDataBase.GetTag("USA")
		local loRelations = voProductionData.ministerAI:GetRelation(voProductionData.ministerTag, loUSATag)
	
		-- If the UK and USA are allied start building a motorized army
		if loRelations:HasAlliance() then
			laArray = {
				garrison_brigade = 1,
				infantry_brigade = 1,
				semi_motorized_brigade = 3,
				motorized_brigade = 3,
				mechanized_brigade = 1,
				light_armor_brigade = 4,
				armor_brigade = 1}
		
		-- We are alone so we need units to defend us
		else
			laArray = {
				garrison_brigade = 1,
				infantry_brigade = 1,
				semi_motorized_brigade = 7,
				motorized_brigade = 3,
				light_armor_brigade = 4,
				armor_brigade = 2}
		end
		
	-- We are not atwar so build stuff to protect our huge empire
	else
		laArray = {
			garrison_brigade = 1,
			infantry_brigade = 1,
			semi_motorized_brigade = 10,
			motorized_brigade = 3,
			light_armor_brigade = 4,
			armor_brigade = 1}
	end
	
	return laArray
end

-- Special Forces ratio distribution
function P.SpecialForcesRatio(voProductionData)
	local laRatio = {
		10, -- Land
		4}; -- Special Force Unit

	local laUnits = {
		marine_brigade = 20,
		bergsjaeger_brigade = 1};
	
	return laRatio, laUnits	
end

-- Elite Units


-- Which units should get 1 more Support unit with Superior Firepower tech
function P.FirePower(voProductionData)
	local laArray = {
		"infantry_brigade",
		"motorized_brigade",
		"mechanized_brigade",
		"armor_brigade",
		"heavy_armor_brigade"};
		
	return laArray
end

-- Air ratio distribution
function P.AirRatio(voProductionData)
	local laArray = {
		interceptor = 12,
		multi_role = 4,
		rocket_interceptor = 1,
		tactical_bomber = 2,
		naval_bomber = 1,
		strategic_bomber = 4,
		Flying_boat = 2,
		twin_engine_fighters = 2 };
	
	return laArray
end
-- Naval ratio distribution
function P.NavalRatio(voProductionData)
	local laArray = {
		destroyer_actual = 5,
		submarine = 0.75,
		nuclear_submarine = 0.5,
		light_cruiser = 1,
		heavy_cruiser = 1,
		frigate = 2,
		battleship = 0.5,
		seaplane_tender = 0.5,
		escort_carrier = 0.5,
		carrier = 2};
	
	return laArray
end

-- Transport to Land unit distribution
function P.TransportLandRatio(voProductionData)
	local laArray
	
	if voProductionData.Year > 1940 then
	laArray = {
		20, -- Land
		1,  -- transport
		1}  -- invasion craft
	else
	
	laArray = {
		500, -- Land
		1,  -- transport
		1}  -- invasion craft
	end	
	
	return laArray
end

-- Convoy Ratio control
--- NOTE: If goverment is in Exile these parms are ignored
function P.ConvoyRatio(voProductionData)
	local laArray = {
		40, -- Percentage extra (adds to 100 percent so if you put 10 it will make it 110% of needed amount)
		100, -- If Percentage extra is less than this it will force it up to the amount entered
		200, -- If Percentage extra is greater than this it will force it down to this
		7} -- Escort to Convoy Ratio (Number indicates how many convoys needed to build 1 escort)
  
	return laArray
end

-- Garrison builds - GAR+(ART|HVYART)+SUPPORTSx2 ("Garrison" Support Group)

function P.Build_garrison_brigade(vIC, viManpowerTotal, voType, voProductionData, viUnitQuantity)
	
	
		voType.first = "artillery_brigade"
		
		voType.Support = 0
	

	return Support.CreateUnit(voType, vIC, viUnitQuantity, voProductionData, laSupportUnit)
end

function P.Build_motorized_brigade(vIC, viManpowerTotal, voType, voProductionData, viUnitQuantity)
	
	if (voProductionData.Year <= 1941) then
		
		voType.TransportMain = "truck_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "anti_tank_brigade"
		voType.second = "artillery_brigade"
		voType.third = "motorcycle_recon_brigade"
		voType.SecondaryMain = "motorized_engineer_brigade"
		voType.Support = 0
		
		else
		
		
		voType.TransportMain = "truck_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "medium_tank_destroyer_brigade"
		voType.second = "artillery_brigade"
		voType.third = "armored_car_brigade"
		voType.forth = "motorized_engineer_brigade"
		voType.SecondaryMain = "sp_anti_air_brigade"
		voType.Support = 0
	end


	return Support.CreateUnit(voType, vIC, viUnitQuantity, voProductionData, laSupportUnit)
end

function P.Build_mechanized_brigade(vIC, viManpowerTotal, voType, voProductionData, viUnitQuantity)
	
	if (voProductionData.Year <= 1941) then
		
		voType.TransportMain = "hftrack_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "tank_destroyer_brigade"
		voType.second = "sp_artillery_brigade"
		voType.third = "armored_car_brigade"
		voType.forth = "armored_engineers_brigade"
		voType.SecondaryMain = "sp_anti_air_brigade"
		voType.Support = 0
		
	else
		
		
		voType.TransportMain = "hftrack_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "medium_tank_destroyer_brigade"
		voType.second = "artillery_brigade"
		voType.third = "armored_car_brigade"
		voType.forth = "armored_engineers_brigade"
		voType.SecondaryMain = "sp_anti_air_brigade"
		voType.Support = 0
	end
	
	return Support.CreateUnit(voType, vIC, viUnitQuantity, voProductionData, laSupportUnit)
end

function P.Build_armor_brigade(vIC, viManpowerTotal, voType, voProductionData, viUnitQuantity)
	
	local sovTag = CCountryDataBase.GetTag("GER")

	
	if voProductionData.humanTag == sovTag then
		voType.TransportMain = "hftrack_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "mechanized_infantry_bat"
		voType.second = "sp_artillery_brigade"
		voType.third = "medium_tank_destroyer_brigade"
		voType.forth = "armored_engineers_brigade"
		voType.SecondaryMain = "sp_anti_air_brigade"
		voType.Support = 0

	elseif (voProductionData.Year <= 1939) then
		
		voType.TransportMain = "truck_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "motorized_infantry_bat"
		voType.second = "medium_artillery_brigade"
		voType.third = "armored_car_brigade"
		voType.SecondaryMain = "motorized_engineer_brigade"
		voType.fifth = "sp_anti_air_brigade"
		
		voType.Support = 0
		
	else
		
		
		voType.TransportMain = "hftrack_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "mechanized_infantry_bat"
		voType.second = "sp_artillery_brigade"
		voType.third = "tank_destroyer_brigade"
		voType.forth = "armored_engineers_brigade"
		voType.SecondaryMain = "sp_anti_air_brigade"
		voType.Support = 0
	end
	
	return Support.CreateUnit(voType, vIC, viUnitQuantity, voProductionData, laSupportUnit)
end

function P.Build_light_armor_brigade(vIC, viManpowerTotal, voType, voProductionData, viUnitQuantity)

		
		voType.SecondaryMain = "armored_engineers_brigade"
		voType.TransportMain = "truck_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "motorized_infantry_bat"
		voType.second = "artillery_brigade"
		voType.third = "motorcycle_recon_brigade"
		voType.forth = "motorized_engineer_brigade"


		voType.Support = 0

	return Support.CreateUnit(voType, vIC, viUnitQuantity, voProductionData, laSupportUnit)
end


function P.Build_infantry_brigade(vIC, viManpowerTotal, voType, voProductionData, viUnitQuantity)
		
	if (voProductionData.Year <= 1940) then
		
		voType.TransportMain = "truck_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "heavy_anti_tank_brigade"
		voType.second = "medium_artillery_brigade"
		voType.third = "Recon_cavalry_brigade"
		voType.SecondaryMain = "engineer_brigade"
		voType.Support = 0
		
		else
		
		
		voType.TransportMain = "truck_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "medium_tank_destroyer_brigade"
		voType.second = "medium_artillery_brigade"
		voType.third = "Recon_cavalry_brigade"
		voType.forth = "anti_air_brigade"
		voType.SecondaryMain = "engineer_brigade"
		voType.Support = 0
	end
		
	return Support.CreateUnit(voType, vIC, viUnitQuantity, voProductionData, laSupportUnit)
end


function P.Build_semi_motorized_brigade(vIC, viManpowerTotal, voType, voProductionData, viUnitQuantity)


	
	-- voType.TertiaryMain = "division_hq"
	
	if (voProductionData.Year <= 1940) then
		
		voType.TransportMain = "truck_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "anti_tank_brigade"
		voType.second = "medium_artillery_brigade"
		voType.third = "Recon_cavalry_brigade"
		voType.SecondaryMain = "motorized_engineer_brigade"
		voType.sith = "infantry_tank_brigade"
		voType.Support = 0
		
		else
		
		
		voType.TransportMain = "truck_transport"
		voType.TertiaryMain = "division_hq_standard"
		voType.first = "medium_tank_destroyer_brigade"
		voType.second = "medium_artillery_brigade"
		voType.third = "Recon_cavalry_brigade"
		voType.SecondaryMain = "motorized_engineer_brigade"
		voType.Support = 0
	end

	return Support.CreateUnit(voType, vIC, viUnitQuantity, voProductionData, laSupportUnit)
end


-- Do not build coastal forts
function P.Build_CoastalFort(vIC, voProductionData)
	return vIC, false
end

function P.Build_Industry(vIC, voProductionData)
	if voProductionData.Year > 1939 then
		return vIC, true
	end
	
	return vIC, false
end

function P.Build_Infrastructure(vIC, voProductionData)
	if voProductionData.Year > 1942 then
		return vIC, true
	end
	
	return vIC, false
end

function P.Build_NavalBase(vIC, voProductionData)
	if voProductionData.Year > 1941 then
		return vIC, true
	end
	
	return vIC, false
end

function P.Build_AirBase(vIC, voProductionData)
	if voProductionData.Year > 1938 or voProductionData.IsAtWar then
		ic = Support.Build_AirBase(vIC, voProductionData, 5191, 5) -- Gibraltar
		return vIC, true
	end
	
	return vIC, true
end

function P.Build_AntiAir(vIC, voProductionData)
	return vIC, false
end

function P.Build_Fort(vIC, voProductionData)
	
	return vIC, false
end

function P.Build_Radar(vIC, voProductionData)
--	vIC = Support.Build_Radar(vIC, voProductionData, 2021, 10) -- Dover
	
	if voProductionData.Year > 1938 then
		return vIC, true
	end
	
	return vIC, false	
end

-- END OF PRODUTION OVERIDES
-- #######################################

-- #######################################
-- Intelligence Hooks


-- End of Intelligence Hooks
-- #######################################

function P.DiploScore_Embargo(voDiploScoreObj)
	-- If Japan then do some special checks
	if tostring(voDiploScoreObj.EmbargoTag) == "JAP" then
		-- If we are part of the allies
		if voDiploScoreObj.Faction == CCurrentGameState.GetFaction("allies") then
			local usaTag = CCountryDataBase.GetTag("USA")
			local loRelation = usaTag:GetCountry():GetRelation(voDiploScoreObj.EmbargoTag)
			
			-- USA is currently embargoing Japan
			if loRelation:HasEmbargo() then
				voDiploScoreObj.Score = 100
				
			-- Do not embargo japan unless the USA does so first
			else
				voDiploScoreObj.Score = 0
			end
			
		-- Never embargo Japan then
		else
			voDiploScoreObj.Score = 0
		end
	end
	
	return voDiploScoreObj.Score
end

function P.DiploScore_Debt(voDiploScoreObj)
	local lsToTag = tostring(voDiploScoreObj.ToTag)
	
	if lsToTag == "CHI" then
		local loAllyFaction = CCurrentGameState.GetFaction("allies")
		
		-- We must be in the allies before we do this
		if voDiploScoreObj.FromCountry:GetFaction() == loAllyFaction then
			local japTag = CCountryDataBase.GetTag("JAP")
			
			-- If China and Japan are at war then let China be allowed debt even if not in the Allies
			if voDiploScoreObj.ToCountry:GetRelation(japTag):HasWar() then
				voDiploScoreObj.Score = 100
			end
		end
	end
	
	return voDiploScoreObj.Score
end

function P.DiploScore_OfferTrade(voDiploScoreObj)
	local laTrade = {
		CAN = {Score = 20},
		AST = {Score = 20},
		SAF = {Score = 20},
		NZL = {Score = 20},
		USA = {Score = 20},
		CHI = {Score = 100},
		GER = {Score = -20},
		ITA = {Score = -20},
		JAP = {Score = 50},
		FRA = {Score = 20}}
	
	if laTrade[voDiploScoreObj.TagName] then
		return voDiploScoreObj.Score + laTrade[voDiploScoreObj.TagName].Score
	end
	
	return voDiploScoreObj.Score
end

function P.DiploScore_InfluenceNation(voDiploScoreObj)
	-- Only do this if we are in the allies
	if voDiploScoreObj.FactionName == "allies" then
		local loInfluences = {
			AST = {Score = 70},
			CAN = {Score = 70},
			SAF = {Score = 70},
			NZL = {Score = 70},
			USA = {Score = 70},
			BRA = {Score = 40},
			YUG = {Score = 20},
			GRE = {Score = 20}}	
	
		-- Are they on our list
		if loInfluences[voDiploScoreObj.TargetName] then
			return (voDiploScoreObj.Score + loInfluences[voDiploScoreObj.TargetName].Score)
		end
	end

	return voDiploScoreObj.Score
end

--##########################
-- Foreign Minister Hooks
function P.ForeignMinister_Influence(voForeignMinisterData)
	local laIgnoreWatch -- Ignore this country but monitor them if they are about to join someone else
	local laWatch -- Monitor them and also fi their score is high enough they can be influenced normally
	local laIgnore -- Ignore them completely

	if voForeignMinisterData.FactionName == "allies" then
		laWatch = {
			"BEL", -- Belgium
			"HOL", -- Holland
			"SWE", -- Sweden
			"CHI", -- China
			"NOR"} -- Norway
			
		laIgnoreWatch = {
			"TUR", -- Turkey
			"SPA", -- Spain
			"SPR", -- Republic Spain
			"POR", -- Portugal
			"AFG", -- Afghanistan
			"PER", -- Persia
			"SAU", -- Saudi Arabia
			"ARG", -- South America
			"BOL", 
			"BRA",
			"CHL",
			"COL",
			"ECU",
			"GUY",
			"PAR",
			"PRU",
			"URU",
			"VEN",
			"CUB", -- Central America
			"COS",
			"DOM",
			"GUA",
			"HAI",
			"HON",
			"MEX",
			"NIC",
			"PAN",
			"SAL"}
			
		laIgnore = {
			"HUN", -- Hungary
			"ROM", -- Romania
			"BUL", -- Bulgaria
			"FIN", -- Finland
			"CYN", -- Yunnan
			"SIA", -- Siam
			"SIK", -- Sikiang
			"CGX", -- Guangxi Clique
			"CSX", -- Shanxi
			"TIB", -- Tibet
			"CHC", -- Communist China
			"LAT", -- Lativia
			"LIT", -- Lithuania
			"EST", -- Estonia
			"LUX", -- Luxemburg
			"VIC", -- Vichy
			"DEN", -- Denmark
			"ETH", -- Ethiopia
			"AUS", -- Austria
			"CZE", -- Czechoslovakia
			"SCH", -- Switzerland
			"VIC", -- Vichy
			"JAP", -- Japan
			"ITA"} -- Italy
	end
	
	return laWatch, laIgnoreWatch, laIgnore
end

function P.ForeignMinister_ProposeWar(voForeignMinisterData)
	if not(voForeignMinisterData.Strategy:IsPreparingWar()) then
		if voForeignMinisterData.FactionName == "allies" then
			local loMinisterCapital = voForeignMinisterData.ministerCountry:GetCapitalLocation():GetContinent()
		
			-- Generic DOW for countries not part of the same faction
			if not(voForeignMinisterData.IsAtWar) then
				for loDiploStatus in voForeignMinisterData.ministerCountry:GetDiplomacy() do
					local loTargetTag = loDiploStatus:GetTarget()

					if loTargetTag:IsValid() then
						local loTargetCountry = loTargetTag:GetCountry()
						local loTargetContinent = loTargetCountry:GetCapitalLocation():GetContinent()
						
						-- Limit DOWs to the same continent as the UKs capital
						if loMinisterCapital == loTargetContinent then
							if loDiploStatus:GetThreat():Get() > voForeignMinisterData.ministerCountry:GetMaxNeutralityForWarWith(loTargetTag):Get() then
								if Support.GoodToWarCheck(loTargetTag, loTargetCountry, voForeignMinisterData, true) then
									voForeignMinisterData.Strategy:PrepareWar(loTargetTag, 100 )
								end
							end
						end
					end
				end
			end

			-- Special Checks Start after this point
			local loWarTag = nil
			local loAxisTag = CCurrentGameState.GetFaction("axis"):GetFactionLeader()
			
			-- Normal DOW checks
			if not(voForeignMinisterData.IsAtWar) and voForeignMinisterData.Year < 1941 then
				local loCominternTag = CCurrentGameState.GetFaction("comintern"):GetFactionLeader()
				local loCominternCountry = loCominternTag:GetCountry()
				local loAxisCountry = loAxisTag:GetCountry()
				
				local lbAxisVsComintermWar = loAxisCountry:GetRelation(loCominternTag):HasWar()
				
				if lbAxisVsComintermWar then
					-- Both Axis and Comintern are at war but we are at peace then check to see if we help Russia or Germany
					if loCominternCountry:CalcDesperation():Get() > 0.4 then
						loWarTag = loAxisTag
						
					elseif loAxisCountry:CalcDesperation():Get() > 0.4 then
						loWarTag = loCominternTag
					end
				else
					-- If Axis are at war
					if loAxisCountry:IsAtWar() then
						loWarTag = loAxisTag
						
					-- If Comintern are at war
					elseif loCominternCountry:IsAtWar() then
						loWarTag = loCominternTag
					end			
				end
				
				-- Seperate Watch for Italy
				if loWarTag == nil then
					local loITATag = CCountryDataBase.GetTag("ITA")
					local loItalyCountry = loITATag:GetCountry()

					if loItalyCountry:IsAtWar() then
						for loDiploStatus in loItalyCountry:GetDiplomacy() do
							local loTargetTag = loDiploStatus:GetTarget()
							local lsTargetTag = tostring(loTargetTag)
							
							if loTargetTag:IsValid() and loDiploStatus:HasWar() and lsTargetTag ~= "ETH" then
								loWarTag = loITATag
								break
							end
						end
					end
				end
				
			-- If we are atwar with the leader of the Axis then look for Vichy
			elseif voForeignMinisterData.ministerCountry:GetRelation(loAxisTag):HasWar() then
				-- Vichy Check and allied with USA
				local loUSATag = CCountryDataBase.GetTag("USA")
				local loUSACountry = loUSATag:GetCountry()
				
				-- Only consider this if we are in the same faction
				if loUSACountry:GetFaction() == voForeignMinisterData.Faction then
					local loVICTag = CCountryDataBase.GetTag("VIC")
					local loVichyCountry = loVICTag:GetCountry()
					
					if Support.GoodToWarCheck(loVICTag, loVichyCountry, voForeignMinisterData, true) then
						loWarTag = loVICTag
					end
				end
			end
			
			-- Do we have a DOW?
			if loWarTag ~= nil then
				voForeignMinisterData.Strategy:PrepareWar(loWarTag, 100)
			end			
		end
	end
end



-- Produce slightly better trained troops
function P.CallLaw_training_laws(minister, voCurrentLaw)
	local _ADVANCED_TRAINING_ = 29
	return CLawDataBase.GetLaw(_ADVANCED_TRAINING_)
end

return AI_ENG
