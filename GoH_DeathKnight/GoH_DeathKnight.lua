-- #######################################
-- #######################################
-- SINCE THIS IS THE DEATH KNIGHT PART OF GOH
-- ALL GoHs CHANGED TO GoH_DeathKnight
-- #######################################
-- #######################################

-- GoH Event Registrations
	GoH_DeathKnight = {}
	GoH_DeathKnight.events = {}

	GoH_DeathKnight.eventFrame = CreateFrame("Frame");
	GoH_DeathKnight.eventFrame:SetScript("OnEvent", function(self, event, ...) GoH_DeathKnight.events[event](...) end);

	-- EVERY EVENT YOU REGISTER MUST HAVE A FUNCTION
	GoH_DeathKnight.eventFrame:RegisterEvent("ADDON_LOADED");
   	GoH_DeathKnight.eventFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
    GoH_DeathKnight.eventFrame:RegisterEvent("PLAYER_REGEN_DISABLED");
   	GoH_DeathKnight.eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED");
    GoH_DeathKnight.eventFrame:RegisterEvent("PLAYER_LOGIN")        
    GoH_DeathKnight.eventFrame:RegisterEvent("AUCTION_HOUSE_SHOW")
    GoH_DeathKnight.eventFrame:RegisterEvent("AUCTION_HOUSE_CLOSED")
    GoH_DeathKnight.eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
	



-- #######################################
-- #######################################
-- INFORMATION GATHERING FOR VARIABLES LATER ON
-- #######################################
-- #######################################
	-- GENDER TABLE
	local genderTable = { "Unknown", "Male", "Female" };
	-- PLAYER CLASS
	local playerClass, EngClass = UnitClass("player");

	-- PLAYER FACTION
	local englishFaction, localizedFaction = UnitFactionGroup("player");

	-- PLAYER RACE
	local GoH_race, GoH_raceEn = UnitRace("player");

	local GoH_NoClassFormsOpen = "NO";


-- #######################################
-- #######################################
-- VARIABLES YOU CAN USE TO CHECK THINGS
-- #######################################
-- #######################################
	-- UNITNAME: CHARACTER / FACTION / CLASS / GENDER / LEVEL
	GoH_DeathKnight.CharName = UnitName("player");				-- (ToonName) Your Toon
	GoH_DeathKnight.Class = EngClass; 							-- (Class) Your Toon
	GoH_DeathKnight.Gender = genderTable[UnitSex("player")];	-- (Gender) Your Toon
	GoH_DeathKnight.Faction = englishFaction;					-- (Faction) Your Toon (Neutral,Horde, Alliance)
	GoH_DeathKnight.CharLevel = UnitLevel("player");			-- (Level) Of Your Toon
	GoH_DeathKnight.NumberRandom = 1;							-- (Random Number Generator)
	GoH_DeathKnight.Race = GoH_raceEn;	                        -- (Race) Of Your Toon
    GoH_DeathKnight.RealGender = genderTable[UnitSex("player")];	-- (Gender) Your Toon
	GoH_DeathKnight.SavedVariablesLoaded = "NO"


-- #######################################
-- #######################################
-- LOAD ADDON FUNCTION
-- #######################################
-- #######################################
function GoH_DeathKnight.events.ADDON_LOADED(addon)

	if addon ~= "GoH_DeathKnight" then
		return;
	end

	GoH_DeathKnight_Form:SetScale(0.9);
	GoH_DeathKnight_Form:SetAlpha(0.85);

	   -- IF NO SAVED VARIABLES, CALL DEFAULT VARIABLES
 	   if (not GoHv5_DeathKnight_Data) then
		-- CALL RESET
		GoH5_DeathKnight_DefaultVariables();
	   end

		-- STUPID ISSUE WITH CLASS NOT BEING LOADED/SAVED IF IN LAGVILLE
		-- THIS IS HERE TO ATTEMPT TO FORCE IT THROUGH.
		local playerClass, EngClass = UnitClass("player");
		GoH_DeathKnight.Class = EngClass;
		GoHv5_DeathKnight_Data.config.LoggedInAsClass = GoH_DeathKnight.Class;
		-- print(GoHv5_DeathKnight_Data.config.LoggedInAsClass)

		GoH_MinimapButton_Reposition();
		


    -- Slash Options
    SlashCmdList["GoH_DeathKnight"] = GoH_DeathKnight.Options
        SLASH_GoH_DeathKnight1 = "/GoH_DK"
        SLASH_GoH_DeathKnight2 = "/GOH_deathknight"
        SLASH_GoH_DeathKnight3 = "/dk"
        SLASH_GoH_DeathKnight4 = "/deathknight"
        SLASH_GoH_DeathKnight5 = "/gohdk"
        SLASH_GoH_DeathKnight6 = "/gohdeathknight"
	  SlashCmdList["GoH_DeathKnight"] = GoH_DeathKnight_SlashOpenClose;

	if GoH_DeathKnight.Faction == "Horde" then
		DeathKnight_FactionPicTexture:SetTexture("interface\\AddOns\\GoH\\Images\\GoH_v5_BackGround_Faction_Horde.tga")
	elseif GoH_DeathKnight.Faction == "Alliance" then
		DeathKnight_FactionPicTexture:SetTexture("interface\\AddOns\\GoH\\Images\\GoH_v5_BackGround_Faction_Alliance.tga")
	elseif GoH_DeathKnight.Faction == "Neutral" then
		DeathKnight_FactionPicTexture:SetTexture("interface\\AddOns\\GoH\\Images\\GoH_v5_BackGround_Faction_Neutral.tga")
	end
	if GoH_DeathKnight.Gender == "Female" then
		DeathKnight_Female_Texture:Show();
	else
		DeathKnight_Female_Texture:Hide();
	end

	-- START THE TIMER
	GoHv5_Timer_Frame:Show();

	GoH5_DeathKnight_SavedVariables();

		-- SHOW / HIDE MINIMAP ICON
	    if GoHv5_DeathKnight_Data.config.Show_Minimap_Icon == "YES" then
	    	GoH_MinimapButton:Show();
	    else
	    	GoH_MinimapButton:Hide();
	    end

end

function GoH_DeathKnight_SlashOpenClose()

	if (GoH_DeathKnight_Form:IsVisible()) then

		GoH_DeathKnight_BUTTON_CLOSE_OnClick()

	else
		GoH_NoClassFormsOpen = "NO";
		GoH_CheckClassMenu_Minimap();
		if GoH_NoClassFormsOpen == "YES" then
			GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "YES"
				GoH_DeathKnight_OPEN_MENU();
			GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "NO"
		elseif GoH_NoClassFormsOpen == "NO" then
			GoH_DeathKnight_OPEN_MENU();
		end
	end
end

-- CLOSE BUTTON
function GoH_DeathKnight_BUTTON_CLOSE_OnClick()

	Play_GUI_Close();
	GoH_DeathKnight_Form:Hide();

end

-- OPEN MENU
function GoH_DeathKnight_OPEN_MENU()

	if (GoH_DeathKnight_Form:IsVisible()) then
		Play_GUI_Close();
	else
		GoH_NoClassFormsOpen = "NO";
		GoH_CheckClassMenu_Minimap()
		if GoH_NoClassFormsOpen == "YES" then
		else
			Play_GUI_Open();
			GoH_NoClassFormsOpen = "NO";
		end
	end

	GoH_DeathKnight_Hide_and_Seek();

		-- Get the Version of the DeathKnight's Addon from the TOC file
		-- and display it on the DeathKnight's Menu near the close button.
		GoH_DeathKnight_Addon_Version = GetAddOnMetadata("GoH_DeathKnight", "Version");
		Label_GoHv5_DeathKnight_VERSION:SetText("|cFFFFD000GoH DeathKnight v"..GoH_DeathKnight_Addon_Version.."|r");

end






-- HIDE OTHER MENU FRAMES AND ALIGN THEM TO THE CORRECT USER PLACED LOCATION
function GoH_DeathKnight_Hide_and_Seek()

		-- SHOW / HIDE MINIMAP ICON
		if GoHv5_DeathKnight_Data.config.Show_Minimap_Icon == nil then
			GoHv5_DeathKnight_Data.config.Show_Minimap_Icon = "YES";
		end
	    if GoHv5_DeathKnight_Data.config.Show_Minimap_Icon == "YES" then
	    	GoH_MinimapButton:Show();
	    else
	    	GoH_MinimapButton:Hide();
	    end

	-- GOH DEATHKNIGHT: Page Tab
	if GoHv5_DeathKnight_Data.config.Page_Tab == nil then
		GoHv5_DeathKnight_Data.config.Page_Tab = "ONE";
	end
	if GoHv5_DeathKnight_Data.config.Page_Tab == "TWO" then
		-- PAGE TWO
		GoH_DEATHKNIGHT_PAGE_TAB_TWO_BUTTON_ICON:Disable();
		GoH_DeathKnight_Frame:Hide();

		GoH_DEATHKNIGHT_PAGE_TAB_ONE_BUTTON_ICON:Enable();
		GoH_DeathKnight_Frame_Page2:Show();

	else
		-- PAGE ONE
		GoH_DEATHKNIGHT_PAGE_TAB_ONE_BUTTON_ICON:Disable();
		GoH_DeathKnight_Frame_Page2:Hide();

		GoH_DEATHKNIGHT_PAGE_TAB_TWO_BUTTON_ICON:Enable();
		GoH_DeathKnight_Frame:Show();

	end

	


	GoH_DeathKnight.Class = GoHv5_DeathKnight_Data.config.LoggedInAsClass;

	-- ###########################
	-- Disable Menu Button for Menu you are on
	-- ###########################
	GoHv5_DeathKnight_MenuButtonDeathKnight:Disable();

	-- ###########################
	-- Hide all other addon menus and show the one you want
	-- ###########################


	-- #######################################################
	-- Match all other addon menus to the Settings location
	-- #######################################################

	-- Release all points before re-assigning or we'll get a lua error
	if (GoH_Form:IsVisible()) then
		GoH_Form:ClearAllPoints();
		GoH_Form:Hide();
		GoH_DeathKnight_Form:ClearAllPoints();
		GoH_DeathKnight_Form:SetPoint("TOPLEFT", "GoH_Form");
		GoH_DeathKnight_Form:Show();
	else
	
	

		GoH_DeathKnight_Form:Show();
	end

	

end



-- MINIMAP OPEN CLOSE
function GoH_DeathKnight_MINIMAP_TOGGLE()

	GoH_DeathKnight.Class = GoHv5_DeathKnight_Data.config.LoggedInAsClass;

	--LEFT MOUSE BUTTON
	
		if (GoH_Form:IsVisible()) then

			GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "YES"
			GoH_OpenClassMenu_Minimap();
			GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "NO"

		else

			GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "YES"
			GoH_NoClassFormsOpen = "NO";
			GoH_CloseClassMenu_Minimap();
			GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "NO"

			if GoH_NoClassFormsOpen == "NO" then
				GoH_OpenClassMenu_Minimap();
			end

		end

	

end

-- MINIMAP OPEN CLOSE
function GoH_Settings_MINIMAP_TOGGLE()

	GoH_DeathKnight.Class = GoHv5_DeathKnight_Data.config.LoggedInAsClass;

	--RIGHT MOUSE BUTTON
	
		if (GoH_Form:IsVisible()) then

			GoH_NoClassFormsOpen = "NO";
			GoH_CheckClassMenu_Minimap();
			if GoH_NoClassFormsOpen == "YES" then
				GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "YES"
					GoH_BUTTON_CLOSE_OnClick();
				GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "NO"
			elseif GoH_NoClassFormsOpen == "NO" then
				GoH_BUTTON_CLOSE_OnClick();
			end

		else

			GoH_NoClassFormsOpen = "NO";
			GoH_CheckClassMenu_Minimap();
			if GoH_NoClassFormsOpen == "YES" then
				GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "YES"
					GoH_OPEN_MENU();
				GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "NO"
			end

			if GoH_NoClassFormsOpen == "NO" then
				GoH_OPEN_MENU();
			end

		end

	

end

function GoH_CheckClassMenu_Minimap()

	GoH_DeathKnight.Class = GoHv5_DeathKnight_Data.config.LoggedInAsClass;


	

end

function GoH_CloseClassMenu_Minimap()

	GoH_DeathKnight.Class = GoHv5_DeathKnight_Data.config.LoggedInAsClass;


	

end

function GoH_OpenClassMenu_Minimap()

	GoH_DeathKnight.Class = GoHv5_DeathKnight_Data.config.LoggedInAsClass;
    -- print(GoHv5_DeathKnight_Data.config.LoggedInAsClass);

	

end


-- ###################################
-- ###################################
-- CLASS MENU AND SETTINGS BUTTON AREA
-- ###################################
-- ###################################


function GoHv5_DeathKnight_MenuButtonSettings_OnClick()

		GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "YES"
		GoH_OPEN_MENU();
		GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "NO"

end

function GoHv5_DeathKnight_MenuButtonDeathKnight_OnClick()

		GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "YES"
		GoH_DeathKnight_OPEN_MENU();
		GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready = "NO"

end


-- #######################################
-- #######################################
-- Call this in a mod's initialization to move the minimap button to its saved position (also used in its movement)
function GoH_MinimapButton_Reposition()
	GoH_MinimapButton:SetPoint("TOPLEFT","Minimap","TOPLEFT",52-(80*cos(GoH_MinimapIcon.GoH_MinimapPos)),(80*sin(GoH_MinimapIcon.GoH_MinimapPos))-52)

end

-- Only while the button is dragged this is called every frame
function GoH_MinimapButton_DraggingFrame_OnUpdate()

	local xpos,ypos = GetCursorPosition()
	local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom()

	xpos = xmin-xpos/UIParent:GetScale()+70 -- get coordinates as differences from the center of the minimap
	ypos = ypos/UIParent:GetScale()-ymin-70

	GoH_MinimapIcon.GoH_MinimapPos = math.deg(math.atan2(ypos,xpos)) -- save the degrees we are relative to the minimap center
	GoH_MinimapButton_Reposition() -- move the button
end

function GoH_MinimapButton_OnEnter(self)
	if (self.dragging) then
		return
	end
	GameTooltip:SetOwner(self or UIParent, "ANCHOR_LEFT")
	GoH_MinimapButton_Details(GameTooltip)
end


function GoH_MinimapButton_Details(tt, ldb)
	tt:SetText("Get Over Here!")

end

