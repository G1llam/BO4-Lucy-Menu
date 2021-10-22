Godmode(player)
{
    player.godmode = isDefined(player.godmode) ? undefined : true;
    if(isDefined(player.godmode))
        player EnableInvulnerability();
    else
        player DisableInvulnerability();
}

UnlimitedAmmo(player)
{
    player.UnlimitedAmmo = isDefined(player.UnlimitedAmmo) ? undefined : true;
    if(isDefined(player.UnlimitedAmmo))
    {
        while(isDefined(player.UnlimitedAmmo))
        {
            player GiveMaxAmmo(player GetCurrentWeapon());
            player SetWeaponAmmoClip(player GetCurrentWeapon(), player GetCurrentWeapon().clipsize);
            wait .05;
        }
    }
}

Clone()
{
    self util::spawn_player_clone(self);
}

RestartMap()
{
    map_restart(0);
}

StringSliderTest(string)
{
    self iPrintlnBold(string);
}

IntSliderTest(int)
{
    self iPrintlnBold(int);
}

PlayerGiveScore(player, value)
{
    player zm_score::add_to_player_score(value);
}

PlayerTakeScore(player, value)
{
    player zm_score::minus_to_player_score(value);
}

MaxAmmo()
{
    self zm_powerups::specific_powerup_drop("full_ammo", self.origin, undefined, undefined, undefined, 1);
}

FireSale()
{
    self zm_powerups::specific_powerup_drop("fire_sale", self.origin, undefined, undefined, undefined, 1);
}

BonusPoints()
{
    self zm_powerups::specific_powerup_drop("bonus_points_player", self.origin, undefined, undefined, undefined, 1);
}

FreePerk()
{
    self zm_powerups::specific_powerup_drop("free_perk", self.origin, undefined, undefined, undefined, 1);
}

Nuke()
{
    self zm_powerups::specific_powerup_drop("nuke", self.origin, undefined, undefined, undefined, 1);
}
HeroWeapon()
{
    self zm_powerups::specific_powerup_drop("hero_weapon_power", self.origin, undefined, undefined, undefined, 1);
}
Instakill()
{
    self zm_powerups::specific_powerup_drop("insta_kill", self.origin, undefined, undefined, undefined, 1);
}
DoublePoints()
{
    self zm_powerups::specific_powerup_drop("double_points", self.origin, undefined, undefined, undefined, 1);
}
Carpenter()
{
    self zm_powerups::specific_powerup_drop("carpenter", self.origin, undefined, undefined, undefined, 1);
}

Achievements()
{
    Gillam_var1 = array("zm_office_cold_war", "zm_office_ice", "zm_office_shock", "zm_office_power", "zm_office_strike", "zm_office_office", "zm_office_crawl", "zm_office_gas", "zm_office_pentupagon", "zm_office_everywhere");
    Gillam_var2 = array("zm_red_tragedy","zm_red_follower","zm_red_tribute","zm_red_mountains","zm_red_no_obol","zm_red_sun","zm_red_wind","zm_red_eagle","zm_red_defense","zm_red_gods");
    Gillam_var3 = array("zm_white_shard","zm_white_starting","zm_white_unlock","zm_white_mod","zm_white_trap","zm_white_pap","zm_white_knuckles","zm_white_perk","zm_white_stun","zm_white_roof","zm_trophy_doctor_is_in");
    Gillam_var4 = array("zm_trials_round_30","zm_escape_most_escape","zm_escape_patch_up","zm_escape_hot_stuff","zm_escape_hist_reenact","zm_escape_match_made","zm_escape_west_side","zm_escape_senseless","zm_escape_gat","zm_escape_throw_dog");
    Gillam_var5 = array("zm_orange_ascend","zm_orange_bells","zm_orange_freeze","zm_orange_hounds","zm_orange_totems","zm_orange_pack","zm_orange_secret","zm_orange_power","zm_orange_ziplines","zm_orange_jar","ZM_ZODT8_TRIAL_STEP_1");
    Gillam_var6 = array("ZM_MANSION_ARTIFACT","ZM_MANSION_STAKE","ZM_MANSION_BOARD","ZM_MANSION_BITE","ZM_MANSION_QUICK","ZM_MANSION_ALCHEMICAL","ZM_MANSION_CRAFTING","ZM_MANSION_SHOCKING","ZM_MANSION_CLOCK","ZM_MANSION_SHRINKING");
    Gillam_var7 = array("zm_towers_challenges","zm_towers_get_ww","zm_towers_trap_build","zm_towers_ww_kills","zm_towers_kitty_kitty","zm_towers_dismember","zm_towers_boss_kill","zm_towers_arena_survive","zm_towers_fast_pap");
    Gillam_var8 = array("ZM_ZODT8_ARTIFACT","ZM_ZODT8_STOWAWAY","ZM_ZODT8_DEEP_END","ZM_ZODT8_LITTLE_PACK","ZM_ZODT8_SHORTCUT","ZM_ZODT8_TENTACLE","ZM_ZODT8_STOKING","ZM_ZODT8_ROCK_PAPER","ZM_ZODT8_SWIMMING","zm_trophy_jack_of_all_blades");
    Gillam_var9 = array("zm_trophy_straw_purchase","zm_trophy_perkaholic_relapse","zm_trophy_gold","zm_rush_personal_score","zm_rush_team_score","zm_rush_multiplier_100","mp_trophy_special_issue_weaponry","mp_trophy_special_issue_equipment");
    Gillam_var10 = array("wz_specialist_super_fan","wz_first_win","wz_not_a_fluke","wz_blackout_historian","wz_specialist_super_fan","wz_zombie_fanatic","mp_trophy_battle_tested","mp_trophy_welcome_to_the_club","MP_SPECIALIST_MEDALS","MP_MULTI_KILL_MEDALS");
    Gillam_var11 = array("mp_trophy_vanquisher");

    foreach(Achev in Gillam_var1) 
    {
        self GiveAchievement(Achev);
        self iPrintLnBold("^2" + Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var2)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var3)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var4)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var5)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var6)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var7)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var8)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var9)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var10)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .6;
    foreach(Achev in Gillam_var11)
    {
        self GiveAchievement(Achev);
        self iPrintLnBold(Achev);
        wait .5;
    }
    wait .5;
    self iPrintLnBold("^6All Achievements Unlocked");
}

thirdperson(player)
{
    player.thirdperson = isDefined(player.thirdperson) ? undefined : true;
    if (isDefined(player.thirdperson))
        self setclientthirdperson(1);
    else
        self setclientthirdperson(0);
}

UnlimitedSprint(player) 
{
    player.UnlimitedSprint = isDefined(player.UnlimitedSprint) ? undefined : true;
    if (isDefined(player.UnlimitedSprint))
    {
        player setperk("specialty_unlimitedsprint");
        player iPrintLnBold("Unlimited Sprint ^2Enabled");
    } 
    else 
    {
        player unsetperk("specialty_unlimitedsprint");
        player iPrintLnBold("Unlimited Sprint ^1Disabled");
    }
}    
        
notarget(player)
{
    player.NoTarg = isDefined(player.NoTarg) ? undefined : true;
    if (isDefined(player.NoTarg))
        player.ignoreme++;
    else
        player.ignoreme--;
}

ProMod(player)
{
    player.promod = isDefined(player.promod) ? undefined : true;
    if (isDefined(player.promod))
        setdvar(#"cg_fov", 120);
    else
        setdvar(#"cg_fov", 80);
}

GiveWeapon()
{
    weapon = getweapon("shotgun_trenchgun_t8");
    self giveweapon(weapon);
    self switchtoweapon(weapon);
}

GWasd()
{
    weapon = getweapon("shotgun_pump_t8");
    self giveweapon(weapon);
    self switchtoweapon(weapon);
}

UpgradeWeapon()
{
    weapon = self GetCurrentWeapon();
    self TakeWeapon(weapon);
    wait .1;
    self GiveWeapon(self zm_weapons::get_upgrade_weapon(weapon, zm_weapons::weapon_supports_aat(weapon)));
    self SwitchToWeapon(self zm_weapons::get_upgrade_weapon(weapon, zm_weapons::weapon_supports_aat(weapon)));
    self IPrintLnBold("^2Your current weapon has been upgraded!");
}

StartTeleGun()
{
    self.TeleGun = isDefined(self.TeleGun) ? undefined : true;
    if (isDefined(self.TeleGun))
    {
        self thread TeleportToCrosshair();
    } 
    else 
    {
        self notify("stop_telegun");
    }
}

TeleportToCrosshair() 
{
    self endon("stop_telegun");
    self endon("game_ended");
    for (;;) 
    {
        self waittill("weapon_fired");
        self SetOrigin(bullettrace(self GetTagOrigin("tag_weapon"), self GetTagOrigin("tag_weapon") + vector_scal(AnglesToForward(self GetPlayerAngles()), 10000), 1, self)["position"]);
        wait .1;
    }
    wait .1;
}

vector_scal(vec, scale) 
{
    vec = (vec[0] * scale, vec[1] * scale, vec[2] * scale);
    return vec;
} 

HideGun() 
{
    self.HideWeapon = isDefined(self.HideWeapon) ? undefined : true;
    if (isDefined(self.HideWeapon))
    {
        setDvar("cg_drawGun", 0);
    } 
    else 
    {
        setDvar("cg_drawGun", 1);
    }
}

bo4_GivePerk(Perk_Name, string) 
{
    self zm_perks::vending_trigger_post_think(self, Perk_Name);
    self iPrintLnBold(Perk_Name + " ^2Given!");
}

KillAllZombies(player) 
{
    foreach(zombie in GetAITeamArray(level.zombie_team)) 
    {
        if (isDefined(zombie)) zombie dodamage(zombie.maxhealth + 999, zombie.origin, player);
    }
}

TeleportZombies() 
{
    foreach(zombie in GetAITeamArray(level.zombie_team)) 
    {
        if (isDefined(zombie)) zombie ForceTeleport(self.origin + (+40, 0, 0));
    }
    self iPrintLnBold("Zombies Teleported!");
}

StartZombiePosistion() 
{
    self.ZombiePos = isDefined(self.ZombiePos) ? undefined : true;
    if (isDefined(self.ZombiePos))
    {
        self thread SetZombiePosition();
    } 
    else 
    {
        self notify("stop_zombiepos");
    }
}

SetZombiePosition() 
{
    self endon("stop_zombiepos");
    self endon("game_ended");
    for (;;)
    {
        foreach(zombo in GetAITeamArray(level.zombie_team)) 
        {
            zombo ForceTeleport(self.origin + (+70, 0, 0));
        }
        wait .1;
    }
    wait .1;
}

BoxPrice(value)
{
    foreach(chest in level.chests) chest.zombie_cost = value;

}

AntiQuit(player) 
{

    self.AntiQuit = isDefined(self.AntiQuit) ? undefined : true;
    if(isDefined(self.AntiQuit))
    {
        SetMatchFlag("disableIngameMenu", 1);
        self iPrintLnBold("Anti Quit ^2Enabled");
        foreach(player in level.players) 
        {
            player CloseInGameMenu();
        }
    } 
    else 
    {
        SetMatchFlag("disableIngameMenu", 0);
        self iPrintLnBold("Anti Quit ^1Disabled");
    }
}

DropWeapon()
{
    Current_Weapon = self GetCurrentWeapon();
    self DropItem(Current_Weapon);
    self iPrintLnBold("^2Current Weapon Dropped");
}

TakeWeapons()
{
    weapon = self getCurrentWeapon();
    self TakeAllWeapons();
    wait .5;
    self TakeWeapon(weapon);
}

TakeCurrentWeapon()
{
    weapon = self getCurrentWeapon();
    self TakeWeapon(weapon);
    wait .5;
    self TakeWeapon(weapon);
}

BO4Level55()
{
    self AddRankXp("kill", undefined, 0, 0, true, 20000);
    self rank::updaterank();
    self AddRankXp("kill", undefined, 0, 0, true, 20000);
    uploadStats(self);
    self iPrintLnBold("^2In order for the rank to save, please end the game via the pause menu and not the fast end!!!");
}

//player plasma
PlasmaLoopplayer(player)
{
    player.PlasmaLoop = isDefined(player.PlasmaLoop) ? undefined : true;
    if(isDefined(player.PlasmaLoop))
    {
        while(isDefined(player.PlasmaLoop))
        {
            player function_e8f77739(#"zm_timeplayed", 1000000);
            wait .1;
        }
    }
}

//self plasma
selfPlasmaLoop()
{
    self.PlasmaLoop = isDefined(self.PlasmaLoop) ? undefined : true;
    if(isDefined(self.PlasmaLoop))
    {
        while(isDefined(self.PlasmaLoop))
        {
            self function_e8f77739(#"zm_timeplayed", 1000000);
            wait .1;
        }
    }
}

bo4_MaxLevels()
{
    self iPrintLnBold("^2Maxing Out Weapon Levels!");
    Weapon_MAX = array("pistol_topbreak_t8","pistol_standard_t8","pistol_burst_t8","pistol_revolver_t8","shotgun_pump_t8","shotgun_pump_t8","shotgun_pump_t8","launcher_standard_t8","lmg_standard_t8","lmg_spray_t8","lmg_heavy_t8","tr_midburst_t8","tr_longburst_t8","tr_powersemi_t8");
    Weapon_MAX1 = array("ar_accurate_t8","ar_fastfire_t8","ar_damage_t8","ar_stealth_t8","ar_modular_t8","ar_mg1909_t8","smg_standard_t8","smg_handling_t8","smg_fastfire_t8","smg_capacity_t8","smg_accurate_t8","smg_drum_pistol_t8","sniper_fastrechamber_t8");
    Weapon_MAX2 = array("sniper_powerbolt_t8","sniper_powersemi_t8","sniper_quickscope_t8");
    foreach(Gun_MaxLevel in Weapon_MAX) 
    {
        self AddRankXp("kill", GetWeapon(Gun_MaxLevel), 0, 0, true, 100000);
        wait .5;
    }
    wait .1;
    foreach(Gun_MaxLevel in Weapon_MAX1) 
    {
        self AddRankXp("kill", GetWeapon(Gun_MaxLevel), 0, 0, true, 100000);
        wait .5;
    }
    wait .1;
    foreach(Gun_MaxLevel in Weapon_MAX2) 
    {
        self AddRankXp("kill", GetWeapon(Gun_MaxLevel), 0, 0, true, 100000);
        wait .5;
    }
    wait .5;
    self rank::updaterank();
    self iPrintLnBold("^2Weapon Levels Maxed!");
}

bo4_UnlockCamos()
{
    Weapon_Camos = array("pistol_topbreak_t8","pistol_standard_t8","pistol_burst_t8","pistol_revolver_t8","shotgun_pump_t8","shotgun_pump_t8","shotgun_pump_t8","launcher_standard_t8","lmg_standard_t8","lmg_spray_t8","lmg_heavy_t8","tr_midburst_t8","tr_longburst_t8","tr_powersemi_t8");
    Weapon_Camos1 = array("ar_accurate_t8","ar_fastfire_t8","ar_damage_t8","ar_stealth_t8","ar_modular_t8","ar_mg1909_t8","smg_standard_t8","smg_handling_t8","smg_fastfire_t8","smg_capacity_t8","smg_accurate_t8","smg_drum_pistol_t8","sniper_fastrechamber_t8");
    Weapon_Camos2 = array("sniper_powerbolt_t8","sniper_powersemi_t8","sniper_quickscope_t8");
    foreach(Gun_Unlocking in Weapon_Camos) 
    {
        self addweaponstat(GetWeapon(Gun_Unlocking), #"headshots", 50000, undefined, undefined);
        wait .1;
        self addweaponstat(GetWeapon(Gun_Unlocking), #"kills", 50000, undefined, undefined);
        self addweaponstat(GetWeapon(Gun_Unlocking), #"kills_extclip_grip_fastmag_quickdraw_stock", 50000, undefined, undefined);
    }
    wait .1;
    foreach(Gun_Unlocking in Weapon_Camos1) 
    {
        self addweaponstat(GetWeapon(Gun_Unlocking), #"headshots", 50000, undefined, undefined);
        wait .1;
        self addweaponstat(GetWeapon(Gun_Unlocking), #"kills", 50000, undefined, undefined);
        self addweaponstat(GetWeapon(Gun_Unlocking), #"kill_optic_5_attachments", 50000, undefined, undefined);
    }
    wait .1;
    foreach(Gun_Unlocking in Weapon_Camos2) 
    {
        self addweaponstat(GetWeapon(Gun_Unlocking), #"headshots", 50000, undefined, undefined);
        wait .1;
        self addweaponstat(GetWeapon(Gun_Unlocking), #"kills", 50000, undefined, undefined);
        self addweaponstat(GetWeapon(Gun_Unlocking), #"kill_optic_5_attachments", 50000, undefined, undefined);

    }
    self iPrintLnBold("^2Camos Unlocked!, Missing 4 Special Camos - WIP");
}


bo4_toggleaimbot()
{
    self.aimbot = isDefined(self.aimbot) ? undefined : true;
    if (isDefined(self.aimbot))
    {
        self thread bo4_AimBot();
        self iPrintLnBold("Aimbot ^2Enabled");
    } 
    else 
    {
        self notify("StopAimbotting");
        self iPrintLnBold("Aimbot ^1Disabled");
    }
}

bo4_AimBot()
{
    self endon("disconnect");
    self endon("StopAimbotting");
    while(isDefined(self.aimbot))
    {
        ClosestZombie = Array::get_all_closest(self.origin, GetAITeamArray(level.zombie_team));
        
        if(self isFiring() && ClosestZombie.size > 0 && isAlive(ClosestZombie[0]) && !self IsMeleeing())
        {
            Loc = ClosestZombie[0] gettagorigin("tag_origin");
            
            self setplayerangles(VectorToAngles((Loc) - (self gettagorigin("tag_origin"))));
            wait .05;
            ClosestZombie[0] kill();
        }
        wait .05;
    }
}

ShowAllBoxes()
{
    foreach(chest in level.chests)
	{
		chest zm_magicbox::show_chest();
	}
}

ModelSpawnTest()
{
        Jugg = util::spawn_model("p7_zm_vending_widows_wine", self.origin + (20, 20, 0));
        wait 2;
        Jugg SetScale(100);
}

LunaWolf()
{
    spawnactor(#"hash_3f174b9bcc408705", self.origin, self.angles, "wolf_protector", 1);
}

Round999()
{
    namespace_a28acff3::set_round_number(200);
    self thread KillAllZombies();
}

Stats_TotalPlayed()
{
    self zm_stats::function_ab006044("TOTAL_GAMES_PLAYED", 9999999);
}

Stats_HighestReached()
{
    self zm_stats::function_1b763e4("HIGHEST_ROUND_REACHED", 999999999);
}

Stats_MostKills()
{
    self zm_stats::function_1b763e4("kills", 999999999);
}

Stats_MostHeadshots()
{
    self zm_stats::function_1b763e4("MOST_HEADSHOTS", 999999999);
}

Stats_Round()
{
    self zm_stats::function_ab006044("TOTAL_ROUNDS_SURVIVED", 999999999);
    self zm_stats::function_a6efb963("TOTAL_ROUNDS_SURVIVED", 999999999);
    self zm_stats::function_9288c79b("TOTAL_ROUNDS_SURVIVED", 999999999);
}

bo4_AddBotsToGame(player) 
{
    AddTestClient();
}

bo4_OpenTheDoors()
{
    types = array("zombie_door", "zombie_airlock_buy", "zombie_debris");
    foreach(type in types)
    {
        zombie_doors = GetEntArray(type, "targetname");
        foreach(door in zombie_doors)
        {
            if(door._door_open == 0)
            {
                door thread zm_blockers::door_opened(door.zombie_cost, 0);
                door._door_open = true;

                all_trigs = GetEntArray(door.target, "target");
                foreach(trig in all_trigs)
                    trig thread zm_utility::set_hint_string(trig, "");
            }
        }
    }
    level._doors_done = true;
    self iPrintLnBold("Doors ^2Opened");
}

bo4_CamoGiver(Camo) 
{
    Weapon = self GetCurrentWeapon();
    self TakeWeapon(Weapon);
    self GiveWeapon(Weapon, self CalcWeaponOptions(Int(Camo), 1, 1, true, true, true, true));
}

BO4PaPUnlock()
{
    level flag::set("zm_towers_pap_quest_completed");
    level flag::set("zm_towers_pap_quest_sentinel_artifact_exploded");
    wait .5;
    mdl_sentinel_artifact = getent("mdl_pap_quest_sentinel_artifact", "targetname");
    mdl_sentinel_artifact delete();
    wait .5;
    a_mdl_pap_room_debris_clip = getentarray("mdl_pap_room_debris_clip", "targetname");
    foreach(mdl_pap_room_debris_clip in a_mdl_pap_room_debris_clip)
    {
        mdl_pap_room_debris_clip connectpaths();
        mdl_pap_room_debris_clip delete();
    }

    wait .5;
	var_10761775 = getent("t_pap_quest_place_head", "targetname");
	var_10761775 delete();

	var_8a3d82fc = getentarray("script_brush_lgt_pap_door", "targetname");
	foreach(a_clip in var_8a3d82fc)
	{
		a_clip delete();
	}
	exploder::exploder("exp_lgt_pap");
	level flag::set("zm_towers_pap_quest_sentinel_artifact_exploded");
    wait .5;

    var_3075677 = getentarray("mdl_pap_quest_head", "targetname");
	foreach(mdl_head in var_3075677)
	{
		mdl_head flag::clear(#"hash_26125a3306681e2");
		mdl_head delete();
	}

    level flag::set("connect_pap_room_to_danu_ra_tunnel");
    level flag::set("connect_pap_room_to_odin_zeus_tunnel");
    wait .5;

    var_f7afe1a0 = getent("sarcophagus_destroyed", "targetname");
	var_f7afe1a0 delete();

    self iPrintLnBold("PaP Open, The outer wall will still appear but you can walk through it - WIP");
}


BO4Percenter()
{
    self zm_stats::increment_challenge_stat(#"hash_4fce5ab108357eb8", 10000);
    self zm_stats::increment_challenge_stat(#"zombie_hunter_kill_packapunch", 10000);
    self zm_stats::increment_challenge_stat(#"hash_45681118c2f2a280", 10000);
    self zm_stats::increment_challenge_stat(#"zombie_hunter_kill_crawler", 10000);
    self zm_stats::increment_challenge_stat(#"zombie_hunter_kill_explosives", 10000);
    self zm_stats::increment_challenge_stat(#"hash_e5e9f9a250abfb0", 10000);
	self zm_stats::increment_challenge_stat(#"hash_552a925ded7df134", 10000);
    self zm_stats::increment_challenge_stat(#"hash_27474bb0ff47386d", 10000);
    self zm_stats::increment_challenge_stat(#"hash_100c68ad4d261fb6", 10000);
    self zm_stats::increment_challenge_stat(#"hash_2325c4e9d9c8568", 10000);
    self zm_stats::increment_challenge_stat(#"hash_4905ff3bfcad436e", 10000);
    self zm_stats::increment_challenge_stat(#"hash_58b00abb84f19b74", 10000);
    self zm_stats::increment_challenge_stat(#"hash_15c2f8dd431370f9", 10000);
    self zm_stats::increment_challenge_stat(#"hash_394fe6e6b6ef8b48", 10000);
    self zm_stats::increment_challenge_stat(#"hash_4c9d106b9054e930", 10000);
    self zm_stats::increment_challenge_stat(#"sniper_kills", 10000);
    self zm_stats::increment_challenge_stat(#"hash_264de6064dd27a15", 10000);
    self zm_stats::increment_challenge_stat(#"hash_2a72be53205a8db3", 10000);
    self zm_stats::increment_challenge_stat(#"hash_3a43a56f5f2aeacc", 10000);
    self zm_stats::increment_challenge_stat(#"hash_63e3f06d30760b7e", 10000);
    self zm_stats::increment_challenge_stat(#"hash_733f619bc1c13bdd", 10000);
    self zm_stats::increment_challenge_stat(#"hash_7ac3980eb0c9f12d", 10000);
    self zm_stats::increment_challenge_stat(#"hash_d0eb45f997dadf0", 10000);
    self zm_stats::increment_challenge_stat(#"hash_2a5699203eb6eeef", 10000);
    self zm_stats::increment_challenge_stat(#"hash_127a105903cdac43", 10000);
    self zm_stats::increment_challenge_stat(#"hash_133bbb2db120c3ef", 10000);
    self zm_stats::increment_challenge_stat(#"sentry_kills", 10000);
    self zm_stats::increment_challenge_stat(#"hash_39a70a2d418f6a87", 10000);
    self zm_stats::increment_challenge_stat(#"hash_4e95db8d75052f1", 10000);
    self zm_stats::increment_challenge_stat(#"hash_79cc5aee66351e26", 10000);
    self zm_stats::increment_challenge_stat(#"hash_4aa750e907d2acba", 10000);
    self zm_stats::increment_challenge_stat(#"hash_7d8e97afa865c9a7", 10000);
    self zm_stats::increment_challenge_stat(#"hash_3e5b9b81d573d194", 10000);
    self zm_stats::increment_challenge_stat(#"hash_43bd32b7705f38fd", 10000);
    self zm_stats::increment_challenge_stat(#"hash_35c05a1d6c5fb3e1", 10000);
    self zm_stats::increment_challenge_stat(#"hash_6f2c378eee6730ea", 10000);
    self zm_stats::increment_challenge_stat(#"hash_2f8c66f4c58f068b", 10000);
    self zm_stats::increment_challenge_stat(#"hash_61df9bce444b2483", 10000);
    self zm_stats::increment_challenge_stat(#"hash_54f005134489c6d", 10000);
    self zm_stats::increment_challenge_stat(#"hash_47646e52fcbb190e", 10000);
    self zm_stats::increment_challenge_stat(#"hash_783ec74bf31f604d", 10000);
    self zm_stats::increment_challenge_stat(#"hash_2f0fbad6ce68f465", 10000);
    self zm_stats::increment_challenge_stat(#"zombie_hunter_kill_trap", 10000);
    self zm_stats::increment_challenge_stat(#"hash_7199c0c1e12de89a", 10000);
    self zm_stats::increment_challenge_stat(#"survivalist_survive_rounds", 10000);
    self zm_stats::increment_challenge_stat(#"hash_564d41c1808857c7", 10000);
    self zm_stats::increment_challenge_stat(#"hash_5f629a09731f538c", 10000);
    self zm_stats::increment_challenge_stat(#"hash_76650a0cbe2993ad", 10000);
    self zm_stats::increment_challenge_stat(#"hash_733e96c5baacb1da", 10000);
    self zm_stats::increment_challenge_stat(#"hash_5d098efca02f7c99", 10000);
    self zm_stats::increment_challenge_stat(#"survivalist_buy_wallbuy", 10000);
    self zm_stats::increment_challenge_stat(#"hash_13d0e9e764b1b52", 10000);
    self zm_stats::increment_challenge_stat(#"gum_gobbler_consume", 10000);
    self zm_stats::increment_challenge_stat(#"survivalist_buy_door", 10000);
    self zm_stats::increment_challenge_stat(#"survivalist_board", 10000);
    self zm_stats::increment_challenge_stat(#"hash_1f20f53b7084fdcb", 10000);
    self zm_stats::increment_challenge_stat(#"hash_4182a6e5bc52ba9", 10000);
    self zm_stats::increment_challenge_stat(#"survivalist_buy_magic_box", 10000);
    self zm_stats::increment_challenge_stat(#"hash_203688d7883cf38c", 10000);
    self zm_stats::increment_challenge_stat(#"hash_300fdf15a515feda", 10000);
    self zm_stats::increment_challenge_stat(#"survivalist_buy_perk", 10000);
    self zm_stats::increment_challenge_stat(#"zombie_hunter_explosion_multikill", 10000);
    self zm_stats::increment_challenge_stat(#"survivalist_revive", 10000);
	self zm_stats::increment_challenge_stat(#"survivalist_powerup", 10000);
    self zm_stats::increment_challenge_stat(#"zombie_hunter_kill_headshot", 10000);
    self zm_stats::increment_challenge_stat(#"hash_6a8397235f934872", 10000);
    self zm_stats::increment_challenge_stat(#"hash_108042c8bd6693fb", 10000);
    self zm_stats::increment_challenge_stat(#"hash_19d6a97f1553f96f", 10000);
    self zm_stats::increment_challenge_stat(#"gum_gobbler_burned_out", 10000);
    self zm_stats::increment_challenge_stat(#"gum_gobbler_phoenix_up", 10000);
    self zm_stats::increment_challenge_stat(#"hash_133575f669ffc55c", 10000);
    self zm_stats::increment_challenge_stat(#"gum_gobbler_wall_power", 10000);
    self zm_stats::increment_challenge_stat(#"hash_c7f076298b8f2cd", 10000000);
    self zm_stats::increment_challenge_stat(#"hash_451da0cb46417560", 100000);

    self zm_stats::increment_challenge_stat(#"hash_2eed193144ed0fee", 100000);
    self zm_stats::increment_challenge_stat(#"hash_4b615433ed6a8afd", 100000);
    self zm_stats::increment_challenge_stat(#"hash_1edc9326989aa0fa", 100000);
    self zm_stats::increment_challenge_stat(#"hash_6196f68daba14ab0", 100000);


    self iPrintLnBold("^2Currently 68% | WIP");
}

PSpeed(player)
{
    self endon("disconnect");
    
    player.PSpeed = isDefined(player.PSpeed) ? undefined : true;
    if(isDefined(player.PSpeed))
        player SetMoveSpeedScale(2);
    else
        player SetMoveSpeedScale(1);
}

GiveAllPerks()
{
    self thread zm_perks::function_cc24f525();
}

selfInstaKill()
{
    self.personal_instakill = isDefined(self.personal_instakill) ? undefined : true;
}

SaveLocation(Val)
{
    if(Val == 0)
    {
        self.SaveLocation      = self.origin;
        self.SaveLocationAngle = self.angles;
        if(!IsDefined(self.SaveLocTog))
            self.SaveLocTog = true;
            
        self iPrintLn("Current Position: ^2Saved");
    }
    else if(Val == 1)
    {
        if(!IsDefined(self.SaveLocTog))
            return self iPrintLnBold("^1Error: ^7No Location Saved");
            
        self SetPlayerAngles(self.SaveLocationAngle);
        self SetOrigin(self.SaveLocation);
        self iPrintLn("Saved Position: ^2Loaded");
    }
    else
    {
        self.SaveLocTog        = undefined;
        self.SaveLocation      = undefined;
        self.SaveLocationAngle = undefined;
    }
}

TpToChest()
{
    Chest = level.chests[level.chest_index];
    origin = Chest.zbarrier.origin;
    FORWARD = AnglesToForward(Chest.zbarrier.angles);
    right = AnglesToRight(Chest.zbarrier.angles);
    BAngles = VectorToAngles(right);
    BOrigin = origin - 48 * right;
    switch(randomInt(3))
    {
        case 0:
            BOrigin = BOrigin + 16 * right;
            break;
        case 1:
            BOrigin = BOrigin + 16 * FORWARD;
            break;
        case 2:
            BOrigin = BOrigin - 16 * right;
            break;
        case 3:
            BOrigin = BOrigin - 16 * FORWARD;
            break;
    }
    self SetOrigin(BOrigin);
    self SetPlayerAngles(BAngles);
}

BO4FreezeBox()
{
    level.chests[level.chest_index].no_fly_away = (!isDefined(level.chests[level.chest_index].no_fly_away) ? true : undefined);
}

Multijump(currentNum = 0)
{
    self endon("disconnect");
    self notify("SMulti");
    self.Multijump = isDefined(self.Multijump) ? undefined : true;
    self endon("SMulti");
    
    if(isDefined(self.Multijump))
        self setPerk("specialty_fallheight");
    else
        self unSetPerk("specialty_fallheight");
        
    while(IsDefined(self.Multijump))
    {
        if(self JumpButtonPressed() && currentNum < 15)
        {
            self setVelocity(self getVelocity() + (0, 0, 250));
            currentNum++;
        }
        if(currentNum == 15 && self isOnGround())
            currentNum = 0;

        wait .1;
    }
}

SuperJump()
{
    level.SuperJump = isDefined(level.SuperJump) ? undefined : true;
    if(isDefined(level.SuperJump))
    {
        foreach(player in level.players)
            player thread AllSuperJump();
    }
}

AllSuperJump()
{
    self endon("disconnect");
    while(isDefined(level.SuperJump))
    {
        if(self JumpButtonPressed())
        {
            for(i=0;i<5;i++)
                self SetVelocity(self GetVelocity() + (0, 0, 140));

            while(!self IsOnGround())
                wait .05;
        }
        wait .05; 
    }
}

SuperSpeed()
{
    level.SuperSpeed = isDefined(level.SuperSpeed) ? undefined : true;

    if(isDefined(level.SuperSpeed))
        setDvar("g_speed", 500);
    else
        setDvar("g_speed", 200);
}

BO4NoFallDam()
{
    level.BO4NoFallD = isDefined(level.BO4NoFallD) ? undefined : true;
    if(isDefined(self.BO4NoFallD))
    {
        SetDvar(#"bg_fallDamageMinHeight", 9999);
        SetDvar(#"bg_fallDamageMaxHeight", 9999);
    }
    else
    {
        setdvar(#"bg_falldamageminheight", 256);
		setdvar(#"bg_falldamagemaxheight", 512);
    }
}

AntiJoin()
{
    level.AntiJoin = isDefined(level.AntiJoin) ? undefined : true;
}

B4Gravity()
{
    level.B4Gravity = isDefined(level.B4Gravity) ? undefined : true;
    if(isDefined(level.B4Gravity))
        SetDvar("bg_gravity", 100);
    else
        SetDvar("bg_gravity", 350);
}