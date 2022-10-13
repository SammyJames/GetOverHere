-- #######################################
-- #######################################
--       GOH DEATH KNIGHT EVENT LOG
-- #######################################
-- #######################################

function GoH_DeathKnight.events.PLAYER_ENTERING_WORLD()
	-- print("Hello World.");
	GoH5_DeathKnight_SavedVariables();
	GoH_Settings_Set_Menu_Button_Images();
	GoH_DeathKnight_Set_Menu_Button_Images();
end

function GoH_DeathKnight.events.COMBAT_LOG_EVENT_UNFILTERED(timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2, ...)

  -- ###########################################################################################################
  -- SINCE THESE ARE LOCAL, YOU CAN RE-USE THE SAME NAMES IN OTHER GOH CLASS MODS AND DON'T HAVE TO CHANGE THEM.
  -- ###########################################################################################################
  local GoH_spellID, GoH_spellName, GoH_all_spellSchool, GoH_amount, GoH_overkill, GoH_school, GoH_resisted, GoH_blocked, GoH_absorbed, GoH_critical = CombatLogGetCurrentEventInfo()

	-- CHECK THE TIMER
	if GoHv5_DeathKnight_Data.config.GoH_Timer_Ready == nil then
		GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "YES";
	end

-- HEALTH HEALME EMOTE
if GoHv5_DeathKnight_Data.config.Use_Health_Warning == "YES" then
	if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote == "YES"  then
		if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote_Shown == "NO" then
			if ((UnitHealth("player") / UnitHealthMax("player")) <= (GoHv5_DeathKnight_Data.config.Health_Percentage)) then
			   DoEmote("healme");
			   GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote_Shown = "YES";
			end
		end
		if ((UnitHealth("player") / UnitHealthMax("player")) >= (GoHv5_DeathKnight_Data.config.Health_Percentage+0.05)) then
		   GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote_Shown = "NO";
		end
	end
end



	-- ################################################################
	-- ################################################################
	-- ################################################################
	-- ################################################################
	-- ################################################################
	-- ################################################################
	-- ################################################################
	-- BEGIN DEATHKNIGHT SPELLS
	-- ################################################################
	
end	





	
	
	

-- Interupt Mod

local OnEvent = function(...)
local self, wowEvent, timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags = ...
	if (wowEvent == "COMBAT_LOG_EVENT_UNFILTERED") then
		local _, eventType, _, srcGUID, _, _, _, _, destName, _, _, sourceID, _, _, spellID, spellName, spellSchool = CombatLogGetCurrentEventInfo()
		if (eventType == "SPELL_INTERRUPT") then
			if (srcGUID == UnitGUID("player")) then
				if GoHv5_DeathKnight_Data.config.Interrupt == "YES" then
					Play_Random_Interrupt();
				end
			end
		end
	end
end

local fr = CreateFrame("Frame", nil, UIParent)
fr:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
fr:SetScript("OnEvent", OnEvent)





-- #######################################
-- #######################################
-- PLAYER ENTER COMBAT SOUNDS
-- #######################################
-- #######################################
function GoH_DeathKnight.events.PLAYER_REGEN_DISABLED()

	if GoHv5_DeathKnight_Data.config.Menu_Fight_Sound == "YES" then
	if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then

			if GoHv5_DeathKnight_Data.config.GoH_Timer_Ready == "YES" then

				-- PLAY YOUR SOUND
				Play_Random_Combat();

				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
			end
	end


end



-- #######################################
-- #######################################
-- PLAYER LEAVE COMBAT SOUNDS
-- #######################################
-- #######################################
function GoH_DeathKnight.events.PLAYER_REGEN_ENABLED()

    if event == "PLAYER_REGEN_ENABLED" and UnitIsDeadOrGhost("player") then return end

	if GoHv5_DeathKnight_Data.config.Fatality_Sound == "YES" then
	if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then

			if GoHv5_DeathKnight_Data.config.GoH_Timer_Ready == "YES" then

				-- PLAY YOUR SOUND
				Play_Random_Finish();

				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
			end
	end


end


function GoH_DeathKnight.events.PLAYER_LOGIN()

            

			local playerClass, EngClass = UnitClass("player");
			GoH_DeathKnight.Class = EngClass;
			GoHv5_DeathKnight_Data.config.LoggedInAsClass = GoH_DeathKnight.Class;
			-- print(GoHv5_DeathKnight_Data.config.LoggedInAsClass)

			
			            
			
			             -- GOH SETTING: GENDER BENDER
						if GoHv5_DeathKnight_Data.config.Gender_Bender == nil then
							GoHv5_DeathKnight_Data.config.Gender_Bender = "NO";
						end

						if GoH_DeathKnight.RealGender == nil then
							GoH_DeathKnight.RealGender = genderTable[UnitSex("player")];
						end
						if GoH_DeathKnight.Gender == nil then
							GoH_DeathKnight.Gender = GoH_DeathKnight.RealGender;
						end

			-- GOH SETTING: GENDER BENDER
			if GoHv5_DeathKnight_Data.config.Gender_Bender == "NO" then
				-- REAL GENDER
				GoH_DeathKnight.Gender = GoH_DeathKnight.RealGender;
			else
				-- OPPOSITE TO REAL
				if GoH_DeathKnight.RealGender == "Female" then
					-- Change to Male
					GoH_DeathKnight.Gender = "Male";
				else
					-- Change to Female
					GoH_DeathKnight.Gender = "Female";
				end
			end

			if (GoH_DeathKnight.Class == "DEATHKNIGHT") then
				if GoHv5_DeathKnight_Data.config.Stupid_Login_Sound == "YES"then
				if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then

					

						-- PLAY YOUR SOUND
						-- REMEMBER WHO OWNS YOUR SOUL DEATHKNIGHT
						if (GoH_DeathKnight.Gender == "Female") then
							PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Remember_Who_Owns_Your_Soul_DeathKnight_Female.mp3","Master");
						else
							PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Who_Owns_Your_Soul.mp3","Master");
						end

						-- RESET THE TIMER
						GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
						-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

					end
				end
			end
end

hooksecurefunc("DoEmote", function(Emote, Msg)

	if GoHv5_DeathKnight_Data.config.Do_Emote == "YES" then

		if Emote == "DANCE" then

			-- Play Emote Dance Sound
			Play_Random_Dance_Emote();
		end
		if Emote == "BEG" then

			-- Play Emote Beg Sound
			Play_Random_Beg_Emote();
		end
		if Emote == "COWER" then

			-- Play Emote Cower Sound
			Play_Random_Cower_Emote();
		end
		
		
		if Emote == "TALK" then
			-- Play Emote Flirt Sound
			Play_Random_Silly_Emote();
		end
		if Emote == "HELLO" then
			-- Play Emote Hello Sound
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Hello_1.mp3","Master");
		end
		if Emote == "GREET" then
			-- Play Emote Hello Sound
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Hello_1.mp3","Master");
		end
		if Emote == "HAIL" then
			-- Play Emote Hello Sound
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Hello_1.mp3","Master");
		end
		if Emote == "HI" then
			-- Play Emote Hello Sound
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Hello_1.mp3","Master");
		end
		if Emote == "WAVE" then
			-- Play Emote Hello Sound
			PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Hello_1.mp3","Master");
		end
		if Emote == "FLIRT" then
			-- Play Emote Hello Sound
			Play_Random_Flirt_Emote();
		end
		if Emote == "INSULT" then
			-- Play Emote Hello Sound
			Play_Random_Insult_Emote();
		end
		
    end
	

	return;
end)

