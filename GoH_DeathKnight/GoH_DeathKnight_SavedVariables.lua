function GoH5_DeathKnight_DefaultVariables()

	-- Minimap SavedVariables
	GoH_MinimapIcon = {
		GoH_MinimapPos = -61 -- default position of the minimap icon in degrees
	}

       GoHv5_DeathKnight_Data = { };
        	GoHv5_DeathKnight_Data.config = { };

			GoH5_DeathKnight_SavedVariables();

end


function GoH5_DeathKnight_SavedVariables()

                

				-- GOH SETTINGS: USE MINIMAP SPEC ICON
	  			 if GoHv5_DeathKnight_Data.config.Use_Minimap_Spec_Icon == nil then
					GoHv5_DeathKnight_Data.config.Use_Minimap_Spec_Icon = "YES";
				end
				-- GOH SETTINGS: YOUR SPEC IS
	  			if GoHv5_DeathKnight_Data.config.Current_Spec == nil then
					GoHv5_DeathKnight_Data.config.Current_Spec = "Nothing";
				end
				
				
				-- GOH SETTINGS: HEALTH PERCENTAGE
	  			if GoHv5_DeathKnight_Data.config.Health_Percentage == nil then
					GoHv5_DeathKnight_Data.config.Health_Percentage = .20;
				end
	  			if GoHv5_DeathKnight_Data.config.Health_Percentage_Value == nil then
					GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "20"
				end

				-- GOH SETTINGS: HEALTH RESET
	  			if GoHv5_DeathKnight_Data.config.Health_Percentage == "25" then
					GoHv5_DeathKnight_Data.config.Health_Percentage = .25;
					GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "25";
				end
	  			if GoHv5_DeathKnight_Data.config.Health_Percentage == "20" then
					GoHv5_DeathKnight_Data.config.Health_Percentage = .20;
					GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "20";
				end
	  			if GoHv5_DeathKnight_Data.config.Health_Percentage == "15" then
					GoHv5_DeathKnight_Data.config.Health_Percentage = .15;
					GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "15";
				end
	  			if GoHv5_DeathKnight_Data.config.Health_Percentage == "10" then
					GoHv5_DeathKnight_Data.config.Health_Percentage = .10;
					GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "10";
				end
	  			if GoHv5_DeathKnight_Data.config.Health_Percentage == "5" then
					GoHv5_DeathKnight_Data.config.Health_Percentage = .05;
					GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "5";
				end

				-- GOH SETTINGS: MANA PERCENTAGE
	  			if GoHv5_DeathKnight_Data.config.Mana_Percentage == nil then
					GoHv5_DeathKnight_Data.config.Mana_Percentage = .15;
				end
	  			if GoHv5_DeathKnight_Data.config.Mana_Percentage_Value == nil then
					GoHv5_DeathKnight_Data.config.Mana_Percentage_Value = "15"
				end
				-- GOH SETTINGS: HEALTH RESET
	  			if GoHv5_DeathKnight_Data.config.Mana_Percentage == "25" then
					GoHv5_DeathKnight_Data.config.Mana_Percentage = .25;
					GoHv5_DeathKnight_Data.config.Mana_Percentage_Value = "25";
				end
	  			if GoHv5_DeathKnight_Data.config.Mana_Percentage == "20" then
					GoHv5_DeathKnight_Data.config.Mana_Percentage = .20;
					GoHv5_DeathKnight_Data.config.Mana_Percentage_Value = "20";
				end
	  			if GoHv5_DeathKnight_Data.config.Mana_Percentage == "15" then
					GoHv5_DeathKnight_Data.config.Mana_Percentage = .15;
					GoHv5_DeathKnight_Data.config.Mana_Percentage_Value = "15";
				end
	  			if GoHv5_DeathKnight_Data.config.Mana_Percentage == "10" then
					GoHv5_DeathKnight_Data.config.Mana_Percentage = .10;
					GoHv5_DeathKnight_Data.config.Mana_Percentage_Value = "10";
				end
	  			if GoHv5_DeathKnight_Data.config.Mana_Percentage == "5" then
					GoHv5_DeathKnight_Data.config.Mana_Percentage = .05;
					GoHv5_DeathKnight_Data.config.Mana_Percentage_Value = "5";
				end

				-- GOH SETTINGS: USE MANA WARNING
	  			if GoHv5_DeathKnight_Data.config.Use_Mana_Warning == nil then
					GoHv5_DeathKnight_Data.config.Use_Mana_Warning = "NO";
				end
				-- GOH SETTINGS: USE MANA WARNING SOUND
	  			if GoHv5_DeathKnight_Data.config.Use_Mana_Warning_Sound == nil then
					GoHv5_DeathKnight_Data.config.Use_Mana_Warning_Sound = "NO";
				end
				-- GOH SETTINGS: USE MANA WARNING EMOTE
	  			if GoHv5_DeathKnight_Data.config.Use_Mana_Warning_Emote == nil then
					GoHv5_DeathKnight_Data.config.Use_Mana_Warning_Emote = "NO";
				end
				-- GOH SETTINGS: USE MANA WARNING EMOTE SHOWN
	  			if GoHv5_DeathKnight_Data.config.Use_Mana_Warning_Emote_Shown == nil then
					GoHv5_DeathKnight_Data.config.Use_Mana_Warning_Emote_Shown = "NO";
				end

				-- GOH SETTINGS: USE HEALTH WARNING
	  			if GoHv5_DeathKnight_Data.config.Use_Health_Warning == nil then
					GoHv5_DeathKnight_Data.config.Use_Health_Warning = "NO";
				end
				-- GOH SETTINGS: USE HEALTH WARNING SOUND
	  			if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound == nil then
					GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound = "NO";
				end
				-- GOH SETTINGS: USE HEALTH WARNING EMOTE
	  			if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote == nil then
					GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote = "NO";
				end
				-- GOH SETTINGS: USE HEALTH WARNING EMOTE SHOWN
	  			if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote_Shown == nil then
					GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote_Shown = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.BloodArt == nil then
					GoHv5_DeathKnight_Data.config.BloodArt = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.FrostArt == nil then
					GoHv5_DeathKnight_Data.config.FrostArt = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.UnholyArt == nil then
					GoHv5_DeathKnight_Data.config.UnholyArt = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.LichKingArt == nil then
					GoHv5_DeathKnight_Data.config.LichKingArt = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.DkCrestArt == nil then
					GoHv5_DeathKnight_Data.config.DkCrestArt = "NO";
				end
				
				
				
				-- GOH DEATHKNIGHT: EMOTE
	  			if GoHv5_DeathKnight_Data.config.Emote == nil then
					GoHv5_DeathKnight_Data.config.Emote = "NO";
				end
				
				-- GOH DEATHKNIGHT: EMOTE
	  			if GoHv5_DeathKnight_Data.config.Say == nil then
					GoHv5_DeathKnight_Data.config.Say = "NO";
				end
				
				-- GOH DEATHKNIGHT: YELL
	  			if GoHv5_DeathKnight_Data.config.Yell == nil then
					GoHv5_DeathKnight_Data.config.Yell = "NO";
				end
				
				
				
				
				
				-- GOH DEATHKNIGHT: EMOTE
	  			if GoHv5_DeathKnight_Data.config.Interrupt_Emote == nil then
					GoHv5_DeathKnight_Data.config.Interrupt_Emote = "NO";
				end
				
				-- GOH DEATHKNIGHT: EMOTE
	  			if GoHv5_DeathKnight_Data.config.Interrupt_Say == nil then
					GoHv5_DeathKnight_Data.config.Interrupt_Say = "NO";
				end
				
				-- GOH DEATHKNIGHT: YELL
	  			if GoHv5_DeathKnight_Data.config.Interrupt_Yell == nil then
					GoHv5_DeathKnight_Data.config.Interrupt_Yell = "NO";
				end
				
				-- GOH : DO EMOTE
	  			if GoHv5_DeathKnight_Data.config.Do_Emote == nil then
					GoHv5_DeathKnight_Data.config.Do_Emote = "NO";
				end
				
				-- GOH : END CAPS
	  			if GoHv5_DeathKnight_Data.config.End_Caps == nil then
					GoHv5_DeathKnight_Data.config.End_Caps = "NO";
				end
				
				
				
				


				-- GOH SETTINGS: USE MK FONT
	  			if GoHv5_DeathKnight_Data.config.Use_MK_Font == nil then
					GoHv5_DeathKnight_Data.config.Use_MK_Font = "NO";
				end

				-- GOH DEATHKNIGHT: Page Tab
	  			if GoHv5_DeathKnight_Data.config.Page_Tab == nil then
					GoHv5_DeathKnight_Data.config.Page_Tab = "ONE";
				end

				-- GOH SETTINGS: Page Tab
	  			if GoHv5_DeathKnight_Data.config.Settings_Page_Tab == nil then
					GoHv5_DeathKnight_Data.config.Settings_Page_Tab = "ONE";
				end

				
				
				-- GOH DEATHKNIGHT: RELOAD_UI SOUND
	  			if GoHv5_DeathKnight_Data.config.Reload_UI == nil then
					GoHv5_DeathKnight_Data.config.Reload_UI = "NO";
				end
				
				
				
				

				-- GOH DEATHKNIGHT: UNIT IN COMBAT
	  			if GoHv5_DeathKnight_Data.config.Unit_In_Combat == nil then
					GoHv5_DeathKnight_Data.config.Unit_In_Combat = "NO";
				end

				-- GOH MENU: SHOW OR HIDE THE MINIMAP ICON
	  			if GoHv5_DeathKnight_Data.config.Show_Minimap_Icon == nil then
					GoHv5_DeathKnight_Data.config.Show_Minimap_Icon = "YES";
				end

				
				
				-- GOH SETTING: GENDER BENDER
	  			if GoHv5_DeathKnight_Data.config.Gender_Bender == nil then
					GoHv5_DeathKnight_Data.config.Gender_Bender = "NO";
				end

				

				

				-- GOH AUTO DND: AUCTION HOUSE
	  			if GoHv5_DeathKnight_Data.config.AutoDND_Auction_House == nil then
					GoHv5_DeathKnight_Data.config.AutoDND_Auction_House = "NO";
				end

				

				-- GOH AUTO DND: IN COMBAT
	  			if GoHv5_DeathKnight_Data.config.AutoDND_In_Combat == nil then
					GoHv5_DeathKnight_Data.config.AutoDND_In_Combat = "NO";
				end

				

				-- GOH TIMER
	  			if GoHv5_DeathKnight_Data.config.GoH_Timer_Ready == nil then
					GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "YES";
				end
				-- GOH TIMER
	  			if GoHv5_DeathKnight_Data.config.GoH_Timer_Time == nil then
					GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				end
				
				


				-- BEGIN DEATH KNIGHT SPELL SETTINGS
				
				if GoHv5_DeathKnight_Data.config.Taunt == nil then
					GoHv5_DeathKnight_Data.config.Taunt = "NO";
				end
				
				-- GOH DEATHKNIGHT: INCLUDE HEADLESS HORSEMAN SOUND
	  			if GoHv5_DeathKnight_Data.config.Include_Headless_Horseman_Sound == nil then
					GoHv5_DeathKnight_Data.config.Include_Headless_Horseman_Sound = "NO";
				end
				
				-- GOH DEATHKNIGHT: INCLUDE RUDE SOUNDS
	  			if GoHv5_DeathKnight_Data.config.Include_Rude_Sounds == nil then
					GoHv5_DeathKnight_Data.config.Include_Rude_Sounds = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Interrupt == nil then
					GoHv5_DeathKnight_Data.config.Interrupt = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Instance_Mode == nil then
					GoHv5_DeathKnight_Data.config.Instance_Mode = "NO";
				end
	  			

	  			if GoHv5_DeathKnight_Data.config.Stupid_Login_Sound == nil then
					GoHv5_DeathKnight_Data.config.Stupid_Login_Sound = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == nil then
					GoHv5_DeathKnight_Data.config.On_Screen_Graphic = "NO";
				end

	  			if GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds == nil then
					GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds = "YES";
				end

	  			if GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready == nil then
					GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "NO";
				end

	  			if GoHv5_DeathKnight_Data.config.Menu_Fight_Sound == nil then
					GoHv5_DeathKnight_Data.config.Menu_Fight_Sound = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Menu_Pet_Music == nil then
					GoHv5_DeathKnight_Data.config.Menu_Pet_Music = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Menu_Auction_House_Sound == nil then
					GoHv5_DeathKnight_Data.config.Menu_Auction_House_Sound = "NO";
				end
				if GoHv5_DeathKnight_Data.config.Menu_Mail_Show_Sound == nil then
					GoHv5_DeathKnight_Data.config.Menu_Mail_Show_Sound = "NO";
				end
				if GoHv5_DeathKnight_Data.config.Menu_Merchant_Show_Sound == nil then
					GoHv5_DeathKnight_Data.config.Menu_Merchant_Show_Sound = "NO";
				end
				if GoHv5_DeathKnight_Data.config.Menu_Transmogrify_Open_Sound == nil then
					GoHv5_DeathKnight_Data.config.Menu_Transmogrify_Open_Sound = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Menu_Player_Dead_Sound == nil then
					GoHv5_DeathKnight_Data.config.Menu_Player_Dead_Sound = "NO";
				end

	  			if GoHv5_DeathKnight_Data.config.Menu_Fight_Music == nil then
					GoHv5_DeathKnight_Data.config.Menu_Fight_Music = "NO";
				end
				if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Twenty == nil then
					GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Twenty = "NO";
				end
				if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Thirty == nil then
					GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Thirty = "NO";
				end
				if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Forty == nil then
					GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Forty = "NO";
				end
				if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Fifty == nil then
					GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Fifty = "NO";
				end
				if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Sixty == nil then
					GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Sixty = "NO";
				end
				if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Seventy == nil then
					GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Seventy = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Menu_Default_Music == nil then
					GoHv5_DeathKnight_Data.config.Menu_Default_Music = "NO";
				end

	  			if GoHv5_DeathKnight_Data.config.Fatality_Sound == nil then
					GoHv5_DeathKnight_Data.config.Fatality_Sound = "NO";
				end

	  			if GoHv5_DeathKnight_Data.config.ToCatchAFrame == nil then
					GoHv5_DeathKnight_Data.config.ToCatchAFrame = "Deathknight";
				end

	  			if GoHv5_DeathKnight_Data.config.LoggedInAsClass == nil then
					GoHv5_DeathKnight_Data.config.LoggedInAsClass = "DEATHKNIGHT";
				end
				
				if GoHv5_DeathKnight_Data.config.Wraith_Walk == nil then
					GoHv5_DeathKnight_Data.config.Wraith_Walk = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Asphyxiate == nil then
					GoHv5_DeathKnight_Data.config.Asphyxiate = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Death_and_Decay == nil then
					GoHv5_DeathKnight_Data.config.Death_and_Decay = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Death_Coil == nil then
					GoHv5_DeathKnight_Data.config.Death_Coil = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Empower_Rune_Weapon == nil then
					GoHv5_DeathKnight_Data.config.Empower_Rune_Weapon = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Icebound_Fortitude == nil then
					GoHv5_DeathKnight_Data.config.Icebound_Fortitude = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.AntiMagic_Shell == nil then
					GoHv5_DeathKnight_Data.config.AntiMagic_Shell = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.AntiMagic_Zone == nil then
					GoHv5_DeathKnight_Data.config.AntiMagic_Zone = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.AntiMagic_Zone_Yell == nil then
					GoHv5_DeathKnight_Data.config.AntiMagic_Zone_Yell = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Raise_Ally == nil then
					GoHv5_DeathKnight_Data.config.Raise_Ally = "NO";
				end

	  			if GoHv5_DeathKnight_Data.config.Void_Touch_Debuff == nil then
					GoHv5_DeathKnight_Data.config.Void_Touch_Debuff = "YES";
				end
				
				if GoHv5_DeathKnight_Data.config.Raise_Dead == nil then
					GoHv5_DeathKnight_Data.config.Raise_Dead = "YES";
				end

	  			if GoHv5_DeathKnight_Data.config.Army_of_the_Dead == nil then
					GoHv5_DeathKnight_Data.config.Army_of_the_Dead = "NO";
				end

	  			if GoHv5_DeathKnight_Data.config.Summon_Gargoyle == nil then
					GoHv5_DeathKnight_Data.config.Summon_Gargoyle = "NO";
				end

	  			if GoHv5_DeathKnight_Data.config.Dark_Transformation == nil then
					GoHv5_DeathKnight_Data.config.Dark_Transformation = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Defile == nil then
					GoHv5_DeathKnight_Data.config.Defile = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Apocalypse == nil then
					GoHv5_DeathKnight_Data.config.Apocalypse = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Chains_of_Ice == nil then
					GoHv5_DeathKnight_Data.config.Chains_of_Ice = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Path_of_Frost == nil then
					GoHv5_DeathKnight_Data.config.Path_of_Frost = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Pillar_of_Frost == nil then
					GoHv5_DeathKnight_Data.config.Pillar_of_Frost = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Blood_Boil == nil then
					GoHv5_DeathKnight_Data.config.Blood_Boil = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Howling_Blast == nil then
					GoHv5_DeathKnight_Data.config.Howling_Blast = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Dancing_Rune_Weapon == nil then
					GoHv5_DeathKnight_Data.config.Dancing_Rune_Weapon = "NO";
				end
				
				
				
				if GoHv5_DeathKnight_Data.config.Remorseless_Winter == nil then
					GoHv5_DeathKnight_Data.config.Remorseless_Winter = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Death_Pact == nil then
					GoHv5_DeathKnight_Data.config.Death_Pact = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Marrowrend == nil then
					GoHv5_DeathKnight_Data.config.Marrowrend = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Corpse_Exploder == nil then
					GoHv5_DeathKnight_Data.config.Corpse_Exploder = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Deaths_Advance == nil then
					GoHv5_DeathKnight_Data.config.Deaths_Advance = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Sacrificial_Pact == nil then
					GoHv5_DeathKnight_Data.config.Sacrificial_Pact = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Lichborne == nil then
					GoHv5_DeathKnight_Data.config.Lichborne = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Acherus_Deathcharger == nil then
					GoHv5_DeathKnight_Data.config.Acherus_Deathcharger = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Unholy_Blight == nil then
					GoHv5_DeathKnight_Data.config.Unholy_Blight = "NO";
				end
				
				if GoHv5_DeathKnight_Data.config.Death_Gate == nil then
					GoHv5_DeathKnight_Data.config.Death_Gate = "NO";
				end
				
				
				
				if GoHv5_DeathKnight_Data.config.Death_Strike == nil then
					GoHv5_DeathKnight_Data.config.Death_Strike = "NO";
				end
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				

	  			

				

end