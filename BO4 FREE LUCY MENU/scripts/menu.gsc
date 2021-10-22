runMenuIndex(menu)
{
    self endon(#"disconnect");

    if(!isDefined(menu))
        menu = "Main";
    
    switch(menu)
    {
        case "Main":
            self addMenu(menu, level.menuName);
            if(self getVerification() > 0) //Verified
            {
                self addOpt("Personal Menu", &newMenu, "Personal Menu" + self GetEntityNumber());
                self addOpt("Fun Menu", &newMenu, "Fun Menu");
                self addOpt("Weapon Menu", &newMenu, "Weapon Menu");
                self addOpt("Powerups Menu", &newMenu, "Powerups Menu");
                self addOpt("Zombie Menu", &newMenu, "Zombie Menu");
                self addOpt("Mystery Box Menu", &newMenu, "Mystery Box Menu");
                self addOpt("Account Menu", &newMenu, "Account Menu");
                if(self getVerification() > 1) //VIP
                {
                    if(self getVerification() > 2) //Co-Host
                    {
                        if(self getVerification() > 3) //Admin
                        {
                            if(self IsHost())
                                self addOpt("Host Menu", &newMenu, "Host Menu");
                                self addOpt("Player Menu", &newMenu, "Players");
                        }
                    }
                }
            }
            break;

        case "Host Menu":
            self addMenu(menu, "Host Menu");
                self addOptBool(level.BO4NoFallD, "No Fall", &BO4NoFallDam);
                self addOptBool(level.SuperJump, "Super Jump", &SuperJump);
                self addOptBool(level.SuperSpeed, "Super Speed", &SuperSpeed);
                self addoptBool(level.B4Gravity, "Low Gravity", &B4Gravity);
                self addOpt("Anti Join", &AntiJoin);
                self addOptBool(self.AntiQuit, "Anti Quit", &AntiQuit);
                self addOpt("Exit Level", &PlayerExitLevel);
                self addOpt("Restart Map", &RestartMap);
            break;
        case "Players":
            self addMenu(menu, "Players");
                foreach(player in level.players)
                {
                    if(player IsHost() && !self IsHost()) //This Will Make It So No One Can See The Host In The Player Menu Besides The Host.
                        continue;
                    if(!isDefined(player.playerSetting["verification"])) //If A Player Doesn't Have A Verification Set, They Won't Show. Mainly Happens If They Are Still Connecting
                        player.playerSetting["verification"] = level.MenuStatus[level.AutoVerify];
                    
                    self addOpt("[^5" + player.playerSetting["verification"] + "^6]" + player getName(), &newMenu, "Options " + player GetEntityNumber());
                }
            break;
        default:
            foundplayer = false;
            for(a=0;a<level.players.size;a++)
            {
                sepmenu = StrTok(menu, " ");
                if(int(sepmenu[(sepmenu.size - 1)]) == level.players[a] GetEntityNumber())
                {
                    foundplayer = true;
                    self MenuOptionsPlayer(menu, level.players[a]);
                }
            }
            
            if(!foundplayer)
            {
                self addMenu(menu, "404 ERROR");
                    self addOpt("Page Not Found");
            }
            break;
    }
}

MenuOptionsPlayer(menu, player)
{
    self endon(#"disconnect");
    
    sepmenu = StrTok(menu, " " + player GetEntityNumber());
    newmenu = "";
    for(a=0;a<sepmenu.size;a++)
    {
        newmenu += sepmenu[a];
        if(a != (sepmenu.size - 1))
            newmenu += " ";
    }
    
    switch(newmenu)
    {
        case "Personal Menu":
            self addMenu(menu, "Personal Menu");
                self addOptBool(player.godmode, "God Mode", &Godmode, player);
                self addOptBool(player.UnlimitedAmmo, "Unlimited Ammo", &UnlimitedAmmo, player);
                self addOptBool(player.thirdperson, "Third Person", &thirdperson, player);
                self addOptBool(player.UnlimitedSprint, "Unlimited Sprint", &UnlimitedSprint, player);
                self addOptBool(player.NoTarg, "No Target", &notarget, player);
                self addOptBool(player.promod, "Promod", &ProMod, player);
                self addOptBool(player.PSpeed, "x2 Speed", &PSpeed, player);
                self addOpt("All Perks", &GiveAllPerks);
                self addOpt("Score Menu", &newMenu, "Score Menu");
                self addOpt("Clone", &Clone);
        break;

        case "Score Menu":
            self addMenu(menu, "Score");
                self addOpt("Max Points", &PlayerGiveScore, player, 4000000);
                self addOpt("Take Points", &PlayerTakeScore, player, 4000000);
                self addOpt("+ 1000", &PlayerGiveScore, player, 1000);
                self addOpt("+ 10000", &PlayerGiveScore, player, 10000);
                self addOpt("+ 100000", &PlayerGiveScore, player, 100000);
                self addOpt("+ 1000000", &PlayerGiveScore, player, 1000000);
                self addOpt("- 1000000", &PlayerTakeScore, player, 1000000);
                self addOpt("- 100000", &PlayerTakeScore, player, 100000);
                self addOpt("- 10000", &PlayerTakeScore, player, 10000);
                self addOpt("- 1000", &PlayerTakeScore, player, 1000);
            break;

        case "Fun Menu":
            self addMenu(menu, "Fun Menu");
            self addOptBool(self.aimbot, "Aimbot", &bo4_toggleaimbot);
            self addOptBool(self.TeleGun, "Teleport Gun", &StartTeleGun);
            self addOptBool(self.HideWeapon, "Hide Gun", &HideGun);
            self addOptBool(self.Multijump, "Multi Jump", &Multijump);
            self addOptBool(self.personal_instakill, "Insta Kill", &selfInstaKill);
            self addOpt("Spawn Luna Wolf", &LunaWolf);
            self addOpt("Add Bot", &bo4_AddBotsToGame);
            self addOpt("Open All Doors", &bo4_OpenTheDoors);
            self addOpt("Unlock PaP", &BO4PaPUnlock);
            self addOpt("Show All Boxes", &ShowAllBoxes);
            self addOpt("Round 200", &Round999);
            self addOpt("Spawn Big Machine", &ModelSpawnTest);
            self addOpt("Save Location", &SaveLocation, 0);
            self addOpt("Load Location", &SaveLocation, 1);
        break;

        case "Weapon Menu":
            self addMenu(menu, "Weapon Menu");
            self addOpt("Weapon Selector", &newMenu, "Weapon Selector");
            self addOpt("Camo Selector", &newMenu, "Camo Selector");
            self addOpt("Upgrade Weapon", &UpgradeWeapon);
            self addOpt("Drop Weapon", &DropWeapon);
            self addOpt("Take All Weapons", &TakeWeapons);
            self addOpt("Take Current Weapon", &TakeCurrentWeapon);
            
        break;

        case "Camo Selector":
        self addMenu(menu, "Camo Selector");
            for(a=0;a<96;a++)
                    self addOpt("Camo: " + (a + 1), &bo4_CamoGiver, a);
        break;

        case "Weapon Selector":
            self addMenu(menu, "Weapon Selector");
            self addOpt("^0 == Assault Rifles ==");
            self addOpt("Give ICR-7", &ar_accurate);
            self addOpt("Give Maddox RFB", &ar_fastfire);
            self addOpt("Give Rampart 17", &ar_damage);
            self addOpt("Give Vapr-XKG", &ar_stealth);
            self addOpt("Give KN-57", &ar_modular);
            self addOpt("Give Hitchcock M9", &ar_mg1909);
            self addOpt("^0 == Submachine Guns ==");
            self addOpt("Give MX9", &smg_standard);
            self addOpt("Give Saug 9mm", &smg_handling);
            self addOpt("Give Spitfire", &smg_fastfire);
            self addOpt("Give Cordite", &smg_capacity);
            self addOpt("Give GKS", &smg_accurate);
            self addOpt("Give Escargot", &smg_drum_pistol);
            self addOpt("^0 == Tactical Rifles ==");
            self addOpt("Give Auger DMR", &tr_powersemi);
            self addOpt("Give Swordfish", &tr_longburst);
            self addOpt("Give ABR 223", &tr_midburst);
            self addOpt("^0 == Lightmachine Guns ==");
            self addOpt("Give VKM 750", &lmg_heavy);
            self addOpt("Give Hades", &lmg_spray);
            self addOpt("Give Titan", &lmg_standard);
            self addOpt("^0 == Sniper Rifles ==");
            self addOpt("Give Outlaw", &sniper_fastrechamber);
            self addOpt("Give Paladin HB50", &sniper_powerbolt);
            self addOpt("Give SDM", &sniper_powersemi);
            self addOpt("Give Koshka", &sniper_quickscope);
            self addOpt("^0 == Pistols ==");
            self addOpt("Give RK 7 Garrison", &pistol_burst);
            self addOpt("Give Mozu", &pistol_revolver);
            self addOpt("Give Strife", &pistol_standard);
            self addOpt("Give Welling", &pistol_topbreak);
            self addOpt("^0 == Shotguns ==");
            self addOpt("Give Mog 12", &shotgun_pump);
            self addOpt("Give SG12", &shotgun_semiauto);
            self addOpt("Give Trenchgun", &shotgun_trenchgun);
            self addOpt("^0 == Specials ==");
            self addOpt("Give Hellion Salvo", &launcher_standard);
            self addOpt("Give Minigun", &minigun);
        break; 

        case "Powerups Menu":
            self addMenu(menu, "Powerups");
            self addOpt("Max Ammo", &MaxAmmo);
            self addOpt("Fire Sale", &FireSale);
            self addOpt("Bonus Points", &BonusPoints);
            self addOpt("Free Perk", &FreePerk);
            self addOpt("Nuke", &Nuke);
            self addOpt("Hero Weapon", &HeroWeapon);
            self addOpt("Insta kill", &Instakill);
            self addOpt("Double Points", &DoublePoints);
            self addOpt("Carpenter", &Carpenter);
            break;

        case "Zombie Menu":
            self addMenu(menu, "Zombie Menu");
            self addOpt("Kill All Zombies", &KillAllZombies, player);
            self addOpt("Teleport Zombies", &TeleportZombies);
            self addOptBool(self.ZombiePos, "Spawn Zombies In Front Of You", &StartZombiePosistion);
        break;

        case "Mystery Box Menu":
            self addMenu(menu, "Mystery Box");
            self addOpt("Price", &newMenu, "Price Menu");
            self addOpt("Teleport To Chest", &TpToChest);
            self addOpt("Freeze Box Position", &BO4FreezeBox);
        break;

        case "Price Menu":
            self addMenu(menu, "Price Menu");
            self addOpt("Default Box Price", &BoxPrice, 950);
            self addOpt("Free Box Price", &BoxPrice, 0);
            self addOpt("10 Box Price", &BoxPrice, 10);
            self addOpt("69 Box Price", &BoxPrice, 69);
            self addOpt("420 Box Price", &BoxPrice, 420);
            self addOpt("-1000 Box Price", &BoxPrice, -1000);
            self addOpt("Random Box Price", &BoxPrice, randomIntRange(0, 999999));
        break;

        case "Account Menu":
            self addMenu(menu,"Account Menu");
            self addOpt("Max Level", &BO4Level55);
            self addOptBool(self.PlasmaLoop, "Plasma Loop", &selfPlasmaLoop);
            self addOpt("Unlock Camos", &bo4_UnlockCamos);
            self addOpt("Max Weapon Levels", &bo4_MaxLevels);
            self addOpt("Give Achievements", &Achievements);
            self addOpt("100 Percenter", &BO4Percenter);
            self addOpt("Stats Menu", &newMenu, "Stats Menu");
        break;

        case "Stats Menu":
            self addMenu(menu,"Stats Menu");
            self addOpt("Total Played", &Stats_TotalPlayed);
            self addOpt("Highest Reached", &Stats_HighestReached);
            self addOpt("Most Kills", &Stats_MostKills);
            self addOpt("Most Headshots", &Stats_MostHeadshots);
            self addOpt("Rounds", &Stats_Round);
        break;

        case "Options":
            altSubs = StrTok("Personal Menu", ",");
            altAcc = StrTok("Account Menu", ",");
            
            self addMenu(menu, "[" + player.playerSetting["verification"] + "]" + player getName());
                self addOpt("Verification", &newMenu, "Verification " + player GetEntityNumber());
                for(a=0;a<altSubs.size;a++)
                    self addOpt(altSubs[a], &newMenu, altSubs[a] + " " + player GetEntityNumber());
            break;
        case "Verification":
            self addMenu(menu, "Verification");
                for(a=0;a<(level.MenuStatus.size - 2);a++)
                    self addOptBool(player getVerification() == a, level.MenuStatus[a], &setVerification, a, player, true);
            break;
        default:
            self addMenu(menu, "404 ERROR");
                self addOpt("Page Not Found");
            break;
    }
}

menuMonitor()
{
    self endon(#"disconnect");
    
    while(true)
    {
        if(self getVerification() > 0)
        {
            if(!self isInMenu())
            {
                if(self AdsButtonPressed() && self MeleeButtonPressed() && !isDefined(self.menu["DisableMenuControls"]))
                {
                    if(isDefined(self.menu["currentMenu"]) && self.menu["currentMenu"] != "")
                        menu = self.menu["currentMenu"];
                    else
                        menu = "Main";
                    
                    self openMenu1(menu);
                    wait .25;
                }
            }
            else if(self isInMenu() && !isDefined(self.menu["DisableMenuControls"]))
            {
                if(self AdsButtonPressed() || self AttackButtonPressed())
                {
                    if(!self AdsButtonPressed() || !self AttackButtonPressed())
                    {
                        curs = self getCursor();
                        menu = self getCurrent();
                        
                        self.menu["curs"][menu] += self AttackButtonPressed();
                        self.menu["curs"][menu] -= self AdsButtonPressed();
                        
                        arry = self.menu["items"][self getCurrent()].name;
                        curs = self getCursor();

                        if(curs < 0 || curs > (arry.size - 1))
                            self setCursor((curs < 0) ? (arry.size - 1) : 0);

                        self drawText();
                        wait .13;
                    }
                }
                else if(self UseButtonPressed() & 1)
                {
                    menu = self getCurrent();
                    curs = self getCursor();
                    
                    if(isDefined(self.menu["items"][menu].func[curs]))
                    {
                        if(isDefined(self.menu["items"][menu].slider[curs]) || isDefined(self.menu["items"][menu].incslider[curs]))
                            self thread ExecuteFunction(self.menu["items"][menu].func[curs], isDefined(self.menu["items"][menu].slider[curs]) ? self.menu_S[menu][curs][self.menu_SS[menu][curs]] : int(self.menu_SS[menu][curs]), self.menu["items"][menu].input1[curs], self.menu["items"][menu].input2[curs], self.menu["items"][menu].input3[curs], self.menu["items"][menu].input4[curs]);
                        else
                            self thread ExecuteFunction(self.menu["items"][menu].func[curs], self.menu["items"][menu].input1[curs], self.menu["items"][menu].input2[curs], self.menu["items"][menu].input3[curs], self.menu["items"][menu].input4[curs]);
                        if(isDefined(isDefined(self.menu["items"][menu].bool[curs])))
                            self RefreshMenu();
                        wait .15;
                    }
                }
                else if(self SecondaryOffhandButtonPressed() || self FragButtonPressed())
                {
                    if(!self SecondaryOffhandButtonPressed() || !self FragButtonPressed())
                    {
                        menu = self getCurrent();
                        curs = self getCursor();
                        
                        if(isDefined(self.menu["items"][menu].slider[curs]) || isDefined(self.menu["items"][menu].incslider[curs]))
                        {
                            inc = isDefined(self.menu["items"][menu].incslider[curs]) ? self.menu["items"][menu].intincrement[curs] : 1;
                            self.menu_SS[menu][curs] += self FragButtonPressed() ? inc : (inc * -1);
                            
                            if(isDefined(self.menu["items"][menu].slider[curs]))
                                self SetSlider(self.menu_SS[menu][curs]);
                            else
                                self SetIncSlider(self.menu_SS[menu][curs]);
                            self RefreshMenu();
                            wait .15;
                        }
                    }
                }
                else if(self MeleeButtonPressed())
                {
                    if(self getCurrent() == "Main")
                        self closeMenu1();
                    else
                        self newMenu();
                    wait .2;
                }
            }
        }
        wait .05;
    }
}

ExecuteFunction(function, i1, i2, i3, i4, i5, i6)
{
    if(!isDefined(function))
        return;
    
    if(isDefined(i6))
        return self thread [[ function ]](i1, i2, i3, i4, i5, i6);
    if(isDefined(i5))
        return self thread [[ function ]](i1, i2, i3, i4, i5);
    if(isDefined(i4))
        return self thread [[ function ]](i1, i2, i3, i4);
    if(isDefined(i3))
        return self thread [[ function ]](i1, i2, i3);
    if(isDefined(i2))
        return self thread [[ function ]](i1, i2);
    if(isDefined(i1))
        return self thread [[ function ]](i1);
    
    return self thread [[ function ]]();
}

drawText()
{
    self endon("menuClosed");
    self endon(#"disconnect");
    
    if(!isDefined(self.menu["curs"][self getCurrent()]))
        self.menu["curs"][self getCurrent()] = 0;
    
    menu = self getCurrent();
    text = self.menu["items"][self getCurrent()].name;
    curs = self getCursor();
    start = 0;

    if(curs > 3 && curs < (text.size - 4) && text.size > 8)
        start = curs - 3;
    if(curs > (text.size - 5) && text.size > 8)
        start = text.size - 8;
    
    if(text.size > 0)
    {
        if(isDefined(self.menu["items"][menu].title))
            self iPrintln("^2[ " + self.menu["items"][menu].title + " ]");
        self.lastRefresh = getTime();

        numOpts = text.size;
        if(numOpts >= 8)
            numOpts = 8;
        
        for(a=0;a<numOpts;a++)
        {
            text = self.menu["items"][menu].name;
            str = text[(a + start)];
            if(isDefined(self.menu["items"][menu].bool[(a + start)]))
                str += (isDefined(self.menu_B[menu][(a + start)]) && self.menu_B[menu][(a + start)]) ? " [ON]" : " [OFF]";
            else if(isDefined(self.menu["items"][menu].incslider[(a + start)]))
                str += " < " + self.menu_SS[menu][(a + start)] + " >";
            else if(isDefined(self.menu["items"][menu].slider[(a + start)]))
                str += " < " + self.menu_S[menu][(a + start)][self.menu_SS[menu][(a + start)]] + " >";
            
            if(curs == (a + start))
                self iPrintln("^2   -> " + str + " ^0<-");
            else
                self iPrintln("^." + str);
        }

        if(numOpts < 9)
        {
            printSize = 8 - numOpts;
            for(a=0;a<printSize;a++)
                self iPrintln(".");
        }
    }
}

RefreshMenu()
{
    if(self hasMenu() && self isInMenu())
    {
        self runMenuIndex(self getCurrent());
        self drawText();
    }
}

openMenu1(menu)
{
    if(!isDefined(menu))
        menu = "Main";
    if(!isDefined(self.menu["curs"][menu]))
        self.menu["curs"][menu] = 0;
    
    self.menu["currentMenu"] = menu;
    self runMenuIndex(menu);
    self.playerSetting["isInMenu"] = true;
    self thread MonitorMenuRefresh();
}

MonitorMenuRefresh()
{
    self endon(#"disconnect");
    self endon("menuClosed");

    if(self isInMenu())
    {
        self drawText();
        while(self isInMenu())
        {
            if(self.lastRefresh < GetTime() - 7000)
                self drawText();
            wait 1;
        }
    }
}

closeMenu1()
{
    self DestroyOpts();
    self notify("menuClosed");
    self.playerSetting["isInMenu"] = undefined;
}

DestroyOpts()
{
    for(a=0;a<9;a++)
        self iPrintln(".");
}