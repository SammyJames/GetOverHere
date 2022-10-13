--Taunts For Get Over Here.
     
    local Instants = {
        [49576] = 'Get Over Here',      --Death Knight..Death Grip.
		[56222] = 'Come Here',          --Death Knight..Dark Command.
		[108199] = 'Come Here',         --Death Knight..Gorefiend's Grasp.
        [355] = 'Get Over Here', 		--Warrior..Taunt.
		[205800] = 'Get Over Here', 	--Warrior..Oppressor.
		[73325] = 'Get Over Here',      --Priest..Leap Of Faith.
		[6795] = 'Get Over Here',       --Druid..Growl.
		[207017] = 'Get Over Here',     --Druid..Alpha Challenge.
		[62124] = 'Get Over Here',      --Pally..Hand of Reckoning.
		[207028] = 'Get Over Here',     --Pally..Inquisition.
		[115546] = 'Get Over Here',     --Monk..Provoke.
		[207025] = 'Get Over Here',     --Monk..Admonishment.
		[281854] = 'Get Over Here',     --Demon Hunter..Torment.
		[185245] = 'Get Over Here',     --Demon Hunter..Torment.
		[207029] = 'Get Over Here',     --Demon Hunter..Tormentor.
		
    }
     
   
     
    local f = CreateFrame('frame');
    f:SetScript('OnEvent', function(self, event, unit, _, spellID)
		
			
			if event == 'UNIT_SPELLCAST_SUCCEEDED' and Instants[spellID] then
			if GoHv5_DeathKnight_Data.config.Taunt == "YES" then
				Play_Random_DEATHGRIP_Sound();
				
			end
			
			
			
			
	        elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 43265) then
		    if GoHv5_DeathKnight_Data.config.Death_and_Decay == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
		    Play_Toasty();
			end
			end
			
			
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 47541) then
			if GoHv5_DeathKnight_Data.config.Death_Coil == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Death_Coil.mp3","Master");
			end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 47568) then
			if GoHv5_DeathKnight_Data.config.Empower_Rune_Weapon == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			if (GoH_DeathKnight.Gender == "Female") then
						PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Frostmourn_Hungers_Female.mp3","Master");
					else
	   			 	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Frostmourne_Hungers.mp3","Master");
				end
			end
		    end

			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 48792) then
			if GoHv5_DeathKnight_Data.config.Icebound_Fortitude == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\IceboundFortitude_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
			end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 48707) then
			if GoHv5_DeathKnight_Data.config.AntiMagic_Shell == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Bubble_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
			end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 51052) then
			if GoHv5_DeathKnight_Data.config.AntiMagic_Zone == "YES" then
			Play_Get_Under_Here()
            end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 61999) then
			if GoHv5_DeathKnight_Data.config.Raise_Ally == "YES" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\RaiseAlly_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 97821) then
			if GoHv5_DeathKnight_Data.config.Void_Touch_Debuff == "YES" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\RaiseAlly_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 46584) then
			if GoHv5_DeathKnight_Data.config.Raise_Dead == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\RaiseDead_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 46585) then
			if GoHv5_DeathKnight_Data.config.Raise_Dead == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\RaiseDead_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 42650) then
			if GoHv5_DeathKnight_Data.config.Army_of_the_Dead == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			if (GoH_DeathKnight.Gender == "Female") then
						Play_Random_Summon_2()
					else
	   			 	Play_Random_Summon()
				end
			end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 49206) then
			if GoHv5_DeathKnight_Data.config.Summon_Gargoyle == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\SummonGargoyle_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 63560) then
			if GoHv5_DeathKnight_Data.config.Dark_Transformation == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Dark_Transformation_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 152280) then
			if GoHv5_DeathKnight_Data.config.Defile == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			Play_Toasty();
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 275699) then
			if GoHv5_DeathKnight_Data.config.Apocalypse == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Slaughter_Female.mp3","Master");
					else
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Apoc.mp3","Master");
            end
            end
			end
			
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 45524) then
			if GoHv5_DeathKnight_Data.config.Chains_of_Ice == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			Play_Random_Laugh();
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 3714) then
			if GoHv5_DeathKnight_Data.config.Path_of_Frost == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			
			if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\FreezingFog_Female.mp3","Master");
					else
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\JesusWalk_1.mp3","Master");
            end
			end
			end
			
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 51271) then
			if GoHv5_DeathKnight_Data.config.Pillar_of_Frost == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\I_Am_A_God_Female.mp3","Master");
					else
	   			 	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Max_Strength.mp3","Master");
			end
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 50842) then
			if GoHv5_DeathKnight_Data.config.Blood_Boil == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			Play_Toasty();
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 49184) then
			if GoHv5_DeathKnight_Data.config.Howling_Blast == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Wind.mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 49028) then
			if GoHv5_DeathKnight_Data.config.Dancing_Rune_Weapon == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Lightsaber_Sound.mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 196770) then
			if GoHv5_DeathKnight_Data.config.Remorseless_Winter == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\FreezingFog_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 48743) then
			if GoHv5_DeathKnight_Data.config.Death_Pact == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			Play_Random_Death_Pact_2()
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 195182) then
			if GoHv5_DeathKnight_Data.config.Marrowrend == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\BoneShield_Begins_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 127344) then
			if GoHv5_DeathKnight_Data.config.Corpse_Exploder == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			Play_Random_Laugh()
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 48265) then
			if GoHv5_DeathKnight_Data.config.Deaths_Advance == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			if (GoH_DeathKnight.Gender == "Female") then
					Play_Random_Laugh()
					else
	   			 	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Max_Speed.mp3","Master");
			end
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 327574) then
			if GoHv5_DeathKnight_Data.config.Sacrificial_Pact == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			Play_Random_Death_Pact_2()
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 49039) then
			if GoHv5_DeathKnight_Data.config.Lichborne == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Unholy.mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 212552) then
			if GoHv5_DeathKnight_Data.config.Wraith_Walk == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			Play_Random_Cloak();
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 108194) then
			if GoHv5_DeathKnight_Data.config.Asphyxiate == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			         PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Lack_Of_Faith_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 221562) then
			if GoHv5_DeathKnight_Data.config.Asphyxiate == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Interrupt_2_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 50977) then
			if GoHv5_DeathKnight_Data.config.Death_Gate == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			Play_Death_Gate();
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 49998) then
			if GoHv5_DeathKnight_Data.config.Death_Strike == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			Play_Random_Death_Pact_2()
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 48778) then
			if GoHv5_DeathKnight_Data.config.Acherus_Deathcharger == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Summon_Mount_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
            end
			end
			
			elseif event == 'UNIT_SPELLCAST_SUCCEEDED' and (spellID == 115989) then
			if GoHv5_DeathKnight_Data.config.Unholy_Blight == "YES" then
			if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Pests.mp3","Master");
            end
			end
			
			
            
			
			
			
			
								
		
		end
	
	end)
	
	 

    
    f:RegisterUnitEvent('UNIT_SPELLCAST_SUCCEEDED', 'player');
	
    
	
	
	
	
	



	
	
	
	
	
	
	
	
	
	
	