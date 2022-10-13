-- DEATH KNIGHT MENU PAGE TAB TWO
function GoH_Deathknight_MenuButton_Page_Two_OnClick()
		-- GO TO PAGE TWO
		GoH_DEATHKNIGHT_PAGE_TAB_TWO_BUTTON_ICON:Disable();
		GoH_DeathKnight_Frame:Hide();

		GoH_DEATHKNIGHT_PAGE_TAB_ONE_BUTTON_ICON:Enable();
		GoH_DeathKnight_Frame_Page2:Show();

		GoHv5_DeathKnight_Data.config.Page_Tab = "TWO";
    	
end

-- DEATH KNIGHT MENU PAGE TAB ONE
function GoH_Deathknight_MenuButton_Page_One_OnClick()
		-- GO TO PAGE ONE
		GoH_DEATHKNIGHT_PAGE_TAB_ONE_BUTTON_ICON:Disable();
		GoH_DeathKnight_Frame_Page2:Hide();

		GoH_DEATHKNIGHT_PAGE_TAB_TWO_BUTTON_ICON:Enable();
		GoH_DeathKnight_Frame:Show();

		GoHv5_DeathKnight_Data.config.Page_Tab = "ONE";
    	
end




-- DEATH KNIGHT PLAY LOGIN SOUND
function GoH_Deathknight_MenuButton_PlayLoginSound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Stupid_Login_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Stupid_Login_Sound = "YES"
	    	-- PLAY YOUR SOUND
						-- REMEMBER WHO OWNS YOUR SOUL DEATHKNIGHT
						if (GoH_DeathKnight.Gender == "Female") then
							PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Remember_Who_Owns_Your_Soul_DeathKnight_Female.mp3","Master");
						else
							PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Who_Owns_Your_Soul.mp3","Master");
						end
						
	    else
	    	GoHv5_DeathKnight_Data.config.Stupid_Login_Sound = "NO"
 		   	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL : Wraith_Walk
function GoH_Deathknight_MenuButton_Wraith_Walk_OnClick()
	    if GoHv5_DeathKnight_Data.config.Wraith_Walk == "NO" then
	    	GoHv5_DeathKnight_Data.config.Wraith_Walk = "YES"
	    	Play_Random_Cloak();
			
			
	    else
	    	GoHv5_DeathKnight_Data.config.Wraith_Walk = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL : ASPHYXIATE
function GoH_Deathknight_MenuButton_Asphyxiate_OnClick()
	    if GoHv5_DeathKnight_Data.config.Asphyxiate == "NO" then
	    	GoHv5_DeathKnight_Data.config.Asphyxiate = "YES"
	    	         PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Lack_Of_Faith_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
			
			
	    else
	    	GoHv5_DeathKnight_Data.config.Asphyxiate = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: DEATH AND DECAY
function GoH_Deathknight_MenuButton_Death_and_Decay_OnClick()
	    if GoHv5_DeathKnight_Data.config.Death_and_Decay == "NO" then
	    	GoHv5_DeathKnight_Data.config.Death_and_Decay = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Toasty_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		
	    
	    else
	    	GoHv5_DeathKnight_Data.config.Death_and_Decay = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: DEATH COIL
function GoH_Deathknight_MenuButton_Death_Coil_OnClick()
	    if GoHv5_DeathKnight_Data.config.Death_Coil == "NO" then
	    	GoHv5_DeathKnight_Data.config.Death_Coil = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Death_Coil.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Death_Coil = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: EMPOWER RUNE WEAPON
function GoH_Deathknight_MenuButton_Empower_Rune_Weapon_OnClick()
	    if GoHv5_DeathKnight_Data.config.Empower_Rune_Weapon == "NO" then
	    	GoHv5_DeathKnight_Data.config.Empower_Rune_Weapon = "YES"
	    	-- FORSTMORN HUNGERS
				if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Frostmourn_Hungers_Female.mp3","Master");
				else
				PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Frostmourne_Hungers.mp3","Master");
				end
	    else
	    	GoHv5_DeathKnight_Data.config.Empower_Rune_Weapon = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: ICEBOUND FORTITUDE
function GoH_Deathknight_MenuButton_Icebound_Fortitude_OnClick()
	    if GoHv5_DeathKnight_Data.config.Icebound_Fortitude == "NO" then
	    	GoHv5_DeathKnight_Data.config.Icebound_Fortitude = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\IceboundFortitude_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Icebound_Fortitude = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: ANTIMAGIC SHELL
function GoH_Deathknight_MenuButton_AntiMagic_Shell_OnClick()
	    if GoHv5_DeathKnight_Data.config.AntiMagic_Shell == "NO" then
	    	GoHv5_DeathKnight_Data.config.AntiMagic_Shell = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Bubble_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.AntiMagic_Shell = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: ANTIMAGIC ZONE
function GoH_Deathknight_MenuButton_AntiMagic_Zone_OnClick()
	    if GoHv5_DeathKnight_Data.config.AntiMagic_Zone == "NO" then
	    	GoHv5_DeathKnight_Data.config.AntiMagic_Zone = "YES"
	    	Play_Get_Under_Here()
	    else
	    	GoHv5_DeathKnight_Data.config.AntiMagic_Zone = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: ANTIMAGIC ZONE YELL
function GoH_Deathknight_MenuButton_AntiMagic_Zone_Yell_OnClick()
	    if GoHv5_DeathKnight_Data.config.AntiMagic_Zone_Yell == "NO" then
	    	GoHv5_DeathKnight_Data.config.AntiMagic_Zone_Yell = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.AntiMagic_Zone_Yell = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: RAISE ALLY
function GoH_Deathknight_MenuButton_Raise_Ally_OnClick()
	    if GoHv5_DeathKnight_Data.config.Raise_Ally == "NO" then
	    	GoHv5_DeathKnight_Data.config.Raise_Ally = "YES"
	    	GoHv5_DeathKnight_Data.config.Void_Touch_Debuff = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\RaiseAlly_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Raise_Ally = "NO"
	    	GoHv5_DeathKnight_Data.config.Void_Touch_Debuff = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: RAISE DEAD
function GoH_Deathknight_MenuButton_Raise_Dead_OnClick()
	    if GoHv5_DeathKnight_Data.config.Raise_Dead == "NO" then
	    	GoHv5_DeathKnight_Data.config.Raise_Dead = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\RaiseDead_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Raise_Dead = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: ARMY OF THE DEAD
function GoH_Deathknight_MenuButton_Army_of_the_Dead_OnClick()
	    if GoHv5_DeathKnight_Data.config.Army_of_the_Dead == "NO" then
	    	GoHv5_DeathKnight_Data.config.Army_of_the_Dead = "YES"
	    	if (GoH_DeathKnight.Gender == "Female") then
					Play_Random_Summon_2()
					else
	   			 	Play_Random_Summon()
			end
		else	
	    	GoHv5_DeathKnight_Data.config.Army_of_the_Dead = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: SUMMON GARGOYLE
function GoH_Deathknight_MenuButton_Summon_Gargoyle_OnClick()
	    if GoHv5_DeathKnight_Data.config.Summon_Gargoyle == "NO" then
	    	GoHv5_DeathKnight_Data.config.Summon_Gargoyle = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\SummonGargoyle_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Summon_Gargoyle = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL: DARK TRANSFORMATION
function GoH_Deathknight_MenuButton_Dark_Transformation_OnClick()
	    if GoHv5_DeathKnight_Data.config.Dark_Transformation == "NO" then
	    	GoHv5_DeathKnight_Data.config.Dark_Transformation = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Dark_Transformation_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Dark_Transformation = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL:   DEFILE
function GoH_Deathknight_MenuButton_Defile_OnClick()
	    if GoHv5_DeathKnight_Data.config.Defile == "NO" then
	    	GoHv5_DeathKnight_Data.config.Defile = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Toasty_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
			
			
	    else
	    	GoHv5_DeathKnight_Data.config.Defile = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   APOCALYPSE
function GoH_Deathknight_MenuButton_Apocalypse_OnClick()
	    if GoHv5_DeathKnight_Data.config.Apocalypse == "NO" then
	    	GoHv5_DeathKnight_Data.config.Apocalypse = "YES"
	    	if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Slaughter_Female.mp3","Master");
					else
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Apoc.mp3","Master");
            end
	    else
	    	GoHv5_DeathKnight_Data.config.Apocalypse = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end



-- DEATH KNIGHT SPELL:   CHAINS OF ICE
function GoH_Deathknight_MenuButton_Chains_of_Ice_OnClick()
	    if GoHv5_DeathKnight_Data.config.Chains_of_Ice == "NO" then
	    	GoHv5_DeathKnight_Data.config.Chains_of_Ice = "YES"
	    	Play_Random_Laugh();
	    else
	    	GoHv5_DeathKnight_Data.config.Chains_of_Ice = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end


-- DEATH KNIGHT SPELL:   PATH OF FROST
function GoH_Deathknight_MenuButton_Path_of_Frost_OnClick()
	    if GoHv5_DeathKnight_Data.config.Path_of_Frost == "NO" then
	    	GoHv5_DeathKnight_Data.config.Path_of_Frost = "YES"
	    	if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\FreezingFog_Female.mp3","Master");
					else
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\JesusWalk_1.mp3","Master");
            end
	    else
	    	GoHv5_DeathKnight_Data.config.Path_of_Frost = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end


-- DEATH KNIGHT SPELL:   PILLAR OF FROST
function GoH_Deathknight_MenuButton_Pillar_of_Frost_OnClick()
	    if GoHv5_DeathKnight_Data.config.Pillar_of_Frost == "NO" then
	    	GoHv5_DeathKnight_Data.config.Pillar_of_Frost = "YES"
	    	if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\I_Am_A_God_Female.mp3","Master");
					else
	   			 	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Max_Strength.mp3","Master");
			end
	    else
	    	GoHv5_DeathKnight_Data.config.Pillar_of_Frost = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end


-- DEATH KNIGHT SPELL: BLOOD BOIL
function GoH_Deathknight_MenuButton_Blood_Boil_OnClick()
	    if GoHv5_DeathKnight_Data.config.Blood_Boil == "NO" then
	    	GoHv5_DeathKnight_Data.config.Blood_Boil = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Toasty_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
			
			
	    else
	    	GoHv5_DeathKnight_Data.config.Blood_Boil = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();
end

-- DEATH KNIGHT SPELL:   HOWLING_BLAST
function GoH_Deathknight_MenuButton_Howling_Blast_OnClick()
	    if GoHv5_DeathKnight_Data.config.Howling_Blast == "NO" then
	    	GoHv5_DeathKnight_Data.config.Howling_Blast = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Wind.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Howling_Blast = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   DANCING RUNE WEAPON
function GoH_Deathknight_MenuButton_Dancing_Rune_Weapon_OnClick()
	    if GoHv5_DeathKnight_Data.config.Dancing_Rune_Weapon == "NO" then
	    	GoHv5_DeathKnight_Data.config.Dancing_Rune_Weapon = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Lightsaber_Sound.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Dancing_Rune_Weapon = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end





-- DEATH KNIGHT SPELL:   REMORSELESS WINTER
function GoH_Deathknight_MenuButton_Remorseless_Winter_OnClick()
	    if GoHv5_DeathKnight_Data.config.Remorseless_Winter == "NO" then
	    	GoHv5_DeathKnight_Data.config.Remorseless_Winter = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\FreezingFog_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Remorseless_Winter = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   DEATH PACT
function GoH_Deathknight_MenuButton_Death_Pact_OnClick()
	    if GoHv5_DeathKnight_Data.config.Death_Pact == "NO" then
	    	GoHv5_DeathKnight_Data.config.Death_Pact = "YES"
	    	Play_Random_Death_Pact_2()
	    else
	    	GoHv5_DeathKnight_Data.config.Death_Pact = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   MARROWREND
function GoH_Deathknight_MenuButton_Marrowrend_OnClick()
	    if GoHv5_DeathKnight_Data.config.Marrowrend == "NO" then
	    	GoHv5_DeathKnight_Data.config.Marrowrend = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\BoneShield_Begins_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Marrowrend = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   Corpse_Exploder
function GoH_Deathknight_MenuButton_Corpse_Exploder_OnClick()
	    if GoHv5_DeathKnight_Data.config.Corpse_Exploder == "NO" then
	    	GoHv5_DeathKnight_Data.config.Corpse_Exploder = "YES"
	    	Play_Random_Laugh()
	    else
	    	GoHv5_DeathKnight_Data.config.Corpse_Exploder = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   Deaths_Advance
function GoH_Deathknight_MenuButton_Deaths_Advance_OnClick()
	    if GoHv5_DeathKnight_Data.config.Deaths_Advance == "NO" then
	    	GoHv5_DeathKnight_Data.config.Deaths_Advance = "YES"
	    	if (GoH_DeathKnight.Gender == "Female") then
					Play_Random_Laugh()
					else
	   			 	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Max_Speed.mp3","Master");
			end
	    else
	    	GoHv5_DeathKnight_Data.config.Deaths_Advance = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   Sacrificial_Pact
function GoH_Deathknight_MenuButton_Sacrificial_Pact_OnClick()
	    if GoHv5_DeathKnight_Data.config.Sacrificial_Pact == "NO" then
	    	GoHv5_DeathKnight_Data.config.Sacrificial_Pact = "YES"
	    	Play_Random_Death_Pact_2()
	    else
	    	GoHv5_DeathKnight_Data.config.Sacrificial_Pact = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   LICHBORNE
function GoH_Deathknight_MenuButton_Lichborne_OnClick()
	    if GoHv5_DeathKnight_Data.config.Lichborne == "NO" then
	    	GoHv5_DeathKnight_Data.config.Lichborne = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Unholy.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Lichborne = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   Acherus_Deathcharger
function GoH_Deathknight_MenuButton_Acherus_Deathcharger_OnClick()
	    if GoHv5_DeathKnight_Data.config.Acherus_Deathcharger == "NO" then
	    	GoHv5_DeathKnight_Data.config.Acherus_Deathcharger = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Summon_Mount_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Acherus_Deathcharger = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   Unholy_Blight
function GoH_Deathknight_MenuButton_Unholy_Blight_OnClick()
	    if GoHv5_DeathKnight_Data.config.Unholy_Blight == "NO" then
	    	GoHv5_DeathKnight_Data.config.Unholy_Blight = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Pests.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Unholy_Blight = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   DEATH GATE
function GoH_Deathknight_MenuButton_Death_Gate_OnClick()
	    if GoHv5_DeathKnight_Data.config.Death_Gate == "NO" then
	    	GoHv5_DeathKnight_Data.config.Death_Gate = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Stargate.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Death_Gate = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end



-- DEATH KNIGHT SPELL:   DEATH STRIKE
function GoH_Deathknight_MenuButton_Death_Strike_OnClick()
	    if GoHv5_DeathKnight_Data.config.Death_Strike == "NO" then
	    	GoHv5_DeathKnight_Data.config.Death_Strike = "YES"
	    	Play_Random_Death_Pact_2()
			
			
	    else
	    	GoHv5_DeathKnight_Data.config.Death_Strike = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end








-- ###################################################################################################
-- ###################################################################################################
-- THIS NEXT FUNCTION IS WHERE ALL YOUR SPELL IMAGES AND TEXT ARE CALLED, SET AND REFRESHED.
-- PUT ALL OF YOUR DEATH KNIGHT SPELLS WITHIN SO YOU JUST NEED TO CALL ONE FUNCTION TO REFRESH ALL.
-- BASICALLY EVERY SPELL YOU ADD ABOVE WILL BE WITHIN THE FUNCTION BELOW AND EVERY SPELL ABOVE WILL CALL
-- THE FUNCTION BELOW. EVERY TIME YOU CHECK SOMETHING IN THE DEATH KNIGHT MENU, BELOW WILL REFRESH IT ALL.
-- ###################################################################################################
-- ###################################################################################################
function GoH_DeathKnight_Set_Menu_Button_Images()









-- Death Knight

        --     DEATH STRIKE
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_DEATH_STRIKE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEATH_STRIKE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEATH_STRIKE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Death_Strike == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_DEATH_STRIKE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Death_Strike_Text:SetText("|cFF00AA00Death Strike|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_DEATH_STRIKE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Death_Strike_Text:SetText("|cFFFF0000Death Strike|r");
			

		end

         

        -- ###################################################################################################
		--     DEATH GATE
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_DEATH_GATE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEATH_GATE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEATH_GATE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Death_Gate == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_DEATH_GATE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Death_Gate_Text:SetText("|cFF00AA00Death Gate|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_DEATH_GATE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Death_Gate_Text:SetText("|cFFFF0000Death Gate|r");
			

		end
		

        --     MARROWREND
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_MARROWREND_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_MARROWREND_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_MARROWREND_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Marrowrend == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_MARROWREND_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Marrowrend_Text:SetText("|cFF00AA00Marrowrend|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_MARROWREND_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Marrowrend_Text:SetText("|cFFFF0000Marrowrend|r");
			

		end
		
		 --     CORPSE_EXPLODER
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_CORPSE_EXPLODER_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_CORPSE_EXPLODER_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_CORPSE_EXPLODER_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Corpse_Exploder == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_CORPSE_EXPLODER_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Corpse_Exploder_Text:SetText("|cFF00AA00Corpse Exploder|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_CORPSE_EXPLODER_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Corpse_Exploder_Text:SetText("|cFFFF0000Corpse Exploder|r");
			

		end
		
		--     DEATHS_ADVANCE
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_DEATHS_ADVANCE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEATHS_ADVANCE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEATHS_ADVANCE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Deaths_Advance == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_DEATHS_ADVANCE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Deaths_Advance_Text:SetText("|cFF00AA00Deaths Advance|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_DEATHS_ADVANCE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Deaths_Advance_Text:SetText("|cFFFF0000Deaths Advance|r");
			

		end
		
		--     SACRIFICIAL_PACT
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_SACRIFICIAL_PACT_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_SACRIFICIAL_PACT_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_SACRIFICIAL_PACT_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Sacrificial_Pact == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_SACRIFICIAL_PACT_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Sacrificial_Pact_Text:SetText("|cFF00AA00Sacrificial Pact|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_SACRIFICIAL_PACT_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Sacrificial_Pact_Text:SetText("|cFFFF0000Sacrificial Pact|r");
			

		end
		
		--     LICHBORNE
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_LICHBORNE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_LICHBORNE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_LICHBORNE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Lichborne == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_LICHBORNE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Lichborne_Text:SetText("|cFF00AA00Lichborne|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_LICHBORNE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Lichborne_Text:SetText("|cFFFF0000Lichborne|r");
			

		end
		
		--     ACHERUS_DEATHCHARGER
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_ACHERUS_DEATHCHARGER_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_ACHERUS_DEATHCHARGER_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_ACHERUS_DEATHCHARGER_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Acherus_Deathcharger == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_ACHERUS_DEATHCHARGER_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Acherus_Deathcharger_Text:SetText("|cFF00AA00Acherus Deathcharger|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_ACHERUS_DEATHCHARGER_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Acherus_Deathcharger_Text:SetText("|cFFFF0000Acherus Deathcharger|r");
			

		end
		
		--     UNHOLY_BLIGHT
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_UNHOLY_BLIGHT_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_UNHOLY_BLIGHT_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_UNHOLY_BLIGHT_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Unholy_Blight == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_UNHOLY_BLIGHT_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Unholy_Blight_Text:SetText("|cFF00AA00Unholy Blight|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_UNHOLY_BLIGHT_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Unholy_Blight_Text:SetText("|cFFFF0000Unholy Blight|r");
			

		end


        --     DEATH_PACT
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_DEATH_PACT_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEATH_PACT_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEATH_PACT_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Death_Pact == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_DEATH_PACT_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Death_Pact_Text:SetText("|cFF00AA00Death Pact|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_DEATH_PACT_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Death_Pact_Text:SetText("|cFFFF0000Death Pact|r");
			

		end



         --     REMORSELESS WINTER
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_REMORSELESS_WINTER_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_REMORSELESS_WINTER_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_REMORSELESS_WINTER_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Remorseless_Winter == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_REMORSELESS_WINTER_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Remorseless_Winter_Text:SetText("|cFF00AA00Remorseless Winter|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_REMORSELESS_WINTER_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Remorseless_Winter_Text:SetText("|cFFFF0000Remorseless Winter|r");
			

		end


        --     DANCING RUNE WEAPON
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_DANCING_RUNE_WEAPON_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DANCING_RUNE_WEAPON_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DANCING_RUNE_WEAPON_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Dancing_Rune_Weapon == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_DANCING_RUNE_WEAPON_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Dancing_Rune_Weapon_Text:SetText("|cFF00AA00Dancing Rune Weapon|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_DANCING_RUNE_WEAPON_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Dancing_Rune_Weapon_Text:SetText("|cFFFF0000Dancing Rune Weapon|r");
			

		end
		
		 
		


        --     HOWLING_BLAST
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_HOWLING_BLAST_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_HOWLING_BLAST_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_HOWLING_BLAST_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Howling_Blast == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_HOWLING_BLAST_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Howling_Blast_Text:SetText("|cFF00AA00Howling Blast|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_HOWLING_BLAST_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Howling_Blast_Text:SetText("|cFFFF0000Howling Blast|r");
			

		end

         --    BLOOD BOIL
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_BLOOD_BOIL_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_BLOOD_BOIL_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_BLOOD_BOIL_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Blood_Boil == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_BLOOD_BOIL_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Blood_Boil_Text:SetText("|cFF00AA00Blood Boil|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_BLOOD_BOIL_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Blood_Boil_Text:SetText("|cFFFF0000Blood Boil|r");
			

		end


         -- ###################################################################################################
        -- ###################################################################################################
		--     PILLAR OF FROST
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_PILLAR_OF_FROST_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_PILLAR_OF_FROST_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_PILLAR_OF_FROST_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Pillar_of_Frost == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_PILLAR_OF_FROST_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Pillar_of_Frost_Text:SetText("|cFF00AA00Pillar of Frost|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_PILLAR_OF_FROST_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Pillar_of_Frost_Text:SetText("|cFFFF0000Pillar of Frost|r");
			

		end


        --     PATH OF FROST
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_PATH_OF_FROST_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_PATH_OF_FROST_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_PATH_OF_FROST_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Path_of_Frost == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_PATH_OF_FROST_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Path_of_Frost_Text:SetText("|cFF00AA00Path of Frost|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_PATH_OF_FROST_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Path_of_Frost_Text:SetText("|cFFFF0000Path of Frost|r");
			

		end



          --     CHAINS OF ICE
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_CHAINS_OF_ICE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_CHAINS_OF_ICE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_CHAINS_OF_ICE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Chains_of_Ice == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_CHAINS_OF_ICE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Chains_of_Ice_Text:SetText("|cFF00AA00Chains of Ice|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_CHAINS_OF_ICE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Chains_of_Ice_Text:SetText("|cFFFF0000Chains of Ice|r");
			

		end


       


    -- ###################################################################################################
        -- ###################################################################################################
		--     DEFILE
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_DEFILE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEFILE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_DEFILE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Defile == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_DEFILE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Defile_Text:SetText("|cFF00AA00Defile|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_DEFILE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Defile_Text:SetText("|cFFFF0000Defile|r");
			

		end
		
		--     APOCALYPSE
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_DEATHKNIGHT_APOCALYPSE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_APOCALYPSE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_DEATHKNIGHT_APOCALYPSE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Apocalypse == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_DEATHKNIGHT_APOCALYPSE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			-- CHANGE THE TEXT TO GREEN
			DeathKnight_Apocalypse_Text:SetText("|cFF00AA00Apocalypse|r");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_DEATHKNIGHT_APOCALYPSE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
			-- CHANGE THE TEXT TO RED
			DeathKnight_Apocalypse_Text:SetText("|cFFFF0000Apocalypse|r");
			

		end


    -- DARK TRANSFORMATION
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_DARK_TRANSFORMATION_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_DARK_TRANSFORMATION_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_DARK_TRANSFORMATION_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Dark_Transformation == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_DARK_TRANSFORMATION_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Dark_Transformation_Text:SetText("|cFF00AA00Dark Transformation|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_DARK_TRANSFORMATION_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Dark_Transformation_Text:SetText("|cFFFF0000Dark Transformation|r");
		

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- SUMMON GARGOYLE
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_SUMMON_GARGOYLE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_SUMMON_GARGOYLE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_SUMMON_GARGOYLE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Summon_Gargoyle == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_SUMMON_GARGOYLE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Summon_Gargoyle_Text:SetText("|cFF00AA00Summon Gargoyle|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_SUMMON_GARGOYLE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Summon_Gargoyle_Text:SetText("|cFFFF0000Summon Gargoyle|r");
		

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- ARMY OF THE DEAD
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_ARMY_OF_THE_DEAD_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ARMY_OF_THE_DEAD_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ARMY_OF_THE_DEAD_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Army_of_the_Dead == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_ARMY_OF_THE_DEAD_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Army_of_the_Dead_Text:SetText("|cFF00AA00Army of the Dead|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_ARMY_OF_THE_DEAD_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Army_of_the_Dead_Text:SetText("|cFFFF0000Army of the Dead|r");
		

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- RAISE DEAD
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_RAISE_DEAD_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_RAISE_DEAD_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_RAISE_DEAD_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Raise_Dead == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_RAISE_DEAD_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Raise_Dead_Text:SetText("|cFF00AA00Raise Dead|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_RAISE_DEAD_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Raise_Dead_Text:SetText("|cFFFF0000Raise Dead|r");
		

	end


    -- RAISE ALLY
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_RAISE_ALLY_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_RAISE_ALLY_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_RAISE_ALLY_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Raise_Ally == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_RAISE_ALLY_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Raise_Ally_Text:SetText("|cFF00AA00Raise Ally|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_RAISE_ALLY_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Raise_Ally_Text:SetText("|cFFFF0000Raise Ally|r");
		

	end

     -- ANTIMAGIC ZONE
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.AntiMagic_Zone == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_AntiMagic_Zone_Text:SetText("|cFF00AA00AntiMagic Zone|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_AntiMagic_Zone_Text:SetText("|cFFFF0000AntiMagic Zone|r");
		

	end
	if GoHv5_DeathKnight_Data.config.AntiMagic_Zone == "NO" then
		GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_YELL_ICON:Disable();
		else
		GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_YELL_ICON:Enable();
		end
	
	
	-- ANTIMAGIC ZONE YELL
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_YELL_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_YELL_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_YELL_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.AntiMagic_Zone_Yell == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_YELL_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_ANTIMAGIC_ZONE_YELL_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		
		

	end


    -- ###################################################################################################
	-- ###################################################################################################
	-- ANTIMAGIC SHELL
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_ANTIMAGIC_SHELL_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ANTIMAGIC_SHELL_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ANTIMAGIC_SHELL_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.AntiMagic_Shell == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_ANTIMAGIC_SHELL_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_AntiMagic_Shell_Text:SetText("|cFF00AA00AntiMagic Shell|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_ANTIMAGIC_SHELL_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_AntiMagic_Shell_Text:SetText("|cFFFF0000AntiMagic Shell|r");
		

	end

    -- ###################################################################################################
	-- ###################################################################################################
	-- ICEBOUND FORTITUDE
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_ICEBOUND_FORTITUDE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ICEBOUND_FORTITUDE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ICEBOUND_FORTITUDE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Icebound_Fortitude == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_ICEBOUND_FORTITUDE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Icebound_Fortitude_Text:SetText("|cFF00AA00Icebound Fortitude|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_ICEBOUND_FORTITUDE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Icebound_Fortitude_Text:SetText("|cFFFF0000Icebound Fortitude|r");
		

	end

    -- ###################################################################################################
	-- ###################################################################################################
	-- EMPOWER RUNE WEAPON
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_EMPOWER_RUNE_WEAPON_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_EMPOWER_RUNE_WEAPON_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_EMPOWER_RUNE_WEAPON_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Empower_Rune_Weapon == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_EMPOWER_RUNE_WEAPON_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Empower_Rune_Weapon_Text:SetText("|cFF00AA00Empower Rune Weapon|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_EMPOWER_RUNE_WEAPON_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Empower_Rune_Weapon_Text:SetText("|cFFFF0000Empower Rune Weapon|r");
		

	end

        
	-- ###################################################################################################
	-- ###################################################################################################
	-- DEATH COIL
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_DEATH_COIL_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_DEATH_COIL_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_DEATH_COIL_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Death_Coil == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_DEATH_COIL_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Death_Coil_Text:SetText("|cFF00AA00Death Coil|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_DEATH_COIL_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Death_Coil_Text:SetText("|cFFFF0000Death Coil|r");
		

	end
	
	
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- DEATH AND DECAY
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_DEATH_AND_DECAY_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_DEATH_AND_DECAY_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_DEATH_AND_DECAY_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Death_and_Decay == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_DEATH_AND_DECAY_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		DeathKnight_Death_and_Decay_Text:SetText("|cFF00AA00Death and Decay|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_DEATH_AND_DECAY_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		DeathKnight_Death_and_Decay_Text:SetText("|cFFFF0000Death and Decay|r");
		

	end
	
	-- Wraith_Walk
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_WRAITH_WALK_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_WRAITH_WALK_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_WRAITH_WALK_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Wraith_Walk == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_WRAITH_WALK_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Wraith_Walk_Text:SetText("|cFF00AA00Wraith Walk|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_WRAITH_WALK_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Wraith_Walk_Text:SetText("|cFFFF0000Wraith Walk|r");
		

	end
	
	-- ASPHYXIATE
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_ASPHYXIATE_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ASPHYXIATE_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_ASPHYXIATE_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Asphyxiate == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_ASPHYXIATE_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Asphyxiate_Text:SetText("|cFF00AA00Asphyxiate|r");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_ASPHYXIATE_ICON:SetNormalTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Asphyxiate_Text:SetText("|cFFFF0000Asphyxiate|r");
		

	end
	
	
			
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY LOGIN SOUND
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_DEATHKNIGHT_PLAY_LOGIN_SOUND:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_PLAY_LOGIN_SOUND:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_DEATHKNIGHT_PLAY_LOGIN_SOUND:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Stupid_Login_Sound == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_DEATHKNIGHT_PLAY_LOGIN_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		DeathKnight_Play_Login_Sound_Text:SetText("|cFF00AA00Play 'Login' Sound|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_DEATHKNIGHT_PLAY_LOGIN_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		DeathKnight_Play_Login_Sound_Text:SetText("|cFFFF0000Play 'Login' Sound|r");

	end
	-- ###################################################################################################

	if GoHv5_DeathKnight_Data.config.Use_MK_Font == nil then
		GoHv5_DeathKnight_Data.config.Use_MK_Font = "NO";
	end

	if GoHv5_DeathKnight_Data.config.Use_MK_Font == "YES" then
   		       UIErrorsFrame:SetFont("Interface\\AddOns\\GoH\\Font\\AKIRA__.ttf", 25, "OUTLINE")
	else
   		       -- UIErrorsFrame:SetFont("Fonts\\FRIZQT__.ttf", 16)
	end

end





