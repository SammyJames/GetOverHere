-- #######################################
-- #######################################
-- SETTNGS
-- #######################################
-- #######################################

local kWoWClassic = (WOW_PROJECT_ID ~= WOW_PROJECT_MAINLINE)
local kWoWWrath = (WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC)

-- GoH Event Registrations
	GoH = {}
	GoH.events = {}

	GoH.eventFrame = CreateFrame("Frame");
	assert(GoH.eventFrame, "failed to create frame")

	-- EVERY EVENT YOU REGISTER MUST HAVE A FUNCTION
	GoH.eventFrame:RegisterEvent("ADDON_LOADED");
	GoH.eventFrame:RegisterEvent("PLAYER_REGEN_DISABLED");
	GoH.eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED");
	GoH.eventFrame:RegisterEvent("PET_BATTLE_OPENING_START");
    GoH.eventFrame:RegisterEvent("PET_BATTLE_CLOSE");
	GoH.eventFrame:RegisterEvent("AUCTION_HOUSE_SHOW");
	GoH.eventFrame:RegisterEvent("AUCTION_HOUSE_CLOSED");
	GoH.eventFrame:RegisterEvent("MAIL_SHOW");
	GoH.eventFrame:RegisterEvent("MAIL_CLOSED");
	GoH.eventFrame:RegisterEvent("MERCHANT_SHOW");
	GoH.eventFrame:RegisterEvent("MERCHANT_CLOSED");
	if not kWoWWrath then
		GoH.eventFrame:RegisterEvent("TRANSMOGRIFY_OPEN");
		GoH.eventFrame:RegisterEvent("TRANSMOGRIFY_CLOSE");
	end
	GoH.eventFrame:RegisterEvent("PLAYER_DEAD");
	GoH.eventFrame:RegisterEvent("LOADING_SCREEN_ENABLED");

	GoH.eventFrame:SetScript("OnEvent", function(self, event, ...) 
		local functor = GoH.events[event]
		assert(functor, "no event registered for %s", tostring(event))
		if functor then
			functor(...)
		end
	end);
	
	

function GoH_Spec()

		local currentSpec = GetSpecialization()
		local currentSpecName = currentSpec and select(2, GetSpecializationInfo(currentSpec)) or "None"
		-- print("Your current spec:", currentSpecName)

		GoHv5_DeathKnight_Data.config.Current_Spec = currentSpecName;

    if GoHv5_DeathKnight_Data.config.Show_Minimap_Icon == "NO" then
	-- NO MINIMAP ICON
		GoH_MinimapButton:Hide();
	else
	-- YES MINIMAP ICON
		GoH_MinimapButton:Show();

		

	end

end


-- #######################################
-- #######################################
-- LOAD ADDON FUNCTION
-- #######################################
-- #######################################
function GoH.events.ADDON_LOADED(addon)

	if addon ~= "GoH" then
		return;
	end

	-- MAX OUT THE BLOOD LEVEL IF NOT ALREADY MAXED
	-- (Won't take affect until a reload)
	-- DEFAULT LEVEL IS 2
	SetCVar("violencelevel", 5);

	GoH_Form:SetScale(0.9);
	GoH_Form:SetAlpha(0.85);

    -- Slash Options
     SlashCmdList["GoH"] = GoH.Options
        SLASH_GoH1 = "/GoH"
        SLASH_GoH2 = "/goh!"
        SLASH_GoH3 = "/getoverhere!"
        SLASH_GoH4 = "/GetOverHere"
	  SlashCmdList["GoH"] = GoH_Settings_MINIMAP_TOGGLE;

	if GoH_DeathKnight.Faction == "Horde" then
		Settings_FactionPicTexture:SetTexture("interface\\AddOns\\GoH\\Images\\GoH_v5_BackGround_Faction_Horde.tga")
	elseif GoH_DeathKnight.Faction == "Alliance" then
		Settings_FactionPicTexture:SetTexture("interface\\AddOns\\GoH\\Images\\GoH_v5_BackGround_Faction_Alliance.tga")
	elseif GoH_DeathKnight.Faction == "Neutral" then
		Settings_FactionPicTexture:SetTexture("interface\\AddOns\\GoH\\Images\\GoH_v5_BackGround_Faction_Neutral.tga")
	end
	if GoH_DeathKnight.Gender == "Female" then
		Settings_Female_Texture:Show();
	else
		Settings_Female_Texture:Hide();
	end
	GoH_Settings_Set_Menu_Button_Images();
end








-- CLOSE BUTTON
function GoH_BUTTON_CLOSE_OnClick()

	Play_GUI_Close();
	GoH_Form:Hide();

end

-- OPEN MENU
function GoH_OPEN_MENU()

	if (GoH_Form:IsVisible()) then
		Play_GUI_Close();
	else
		Play_GUI_Open();
	end


	GoH_Hide_and_Seek();

		-- Get the Version of the Setting's Addon from the TOC file
		-- and display it on the Setting's Menu near the close button.
		GoH_Settings_Addon_Version = GetAddOnMetadata("GoH", "Version");
		Label_GoHv5_Settings_VERSION:SetText("|cFFFFD000GoH Core v"..GoH_Settings_Addon_Version.."|r");

	

end

-- HIDE OTHER MENU FRAMES AND ALIGN THEM TO THE CORRECT USER PLACED LOCATION
function GoH_Hide_and_Seek()

	-- Set Health Background Image
	if GoHv5_DeathKnight_Data.config.Health_Percentage_Value == "25" then
			GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_25");
	elseif GoHv5_DeathKnight_Data.config.Health_Percentage_Value == "20" then
			GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_20");
	elseif GoHv5_DeathKnight_Data.config.Health_Percentage_Value == "15" then
			GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_15");
	elseif GoHv5_DeathKnight_Data.config.Health_Percentage_Value == "10" then
			GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_10");
	elseif GoHv5_DeathKnight_Data.config.Health_Percentage_Value == "5" then
			GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_5");
	end
	

	-- GOH SETTINGS: Page Tab
	if GoHv5_DeathKnight_Data.config.Settings_Page_Tab == nil then
		GoHv5_DeathKnight_Data.config.Settings_Page_Tab = "ONE";
	end
	if GoHv5_DeathKnight_Data.config.Settings_Page_Tab == "TWO" then
		-- PAGE TWO
		GoH_SETTINGS_PAGE_TAB_TWO_BUTTON_ICON:Disable();
		GoH_Frame:Hide();

		GoH_SETTINGS_PAGE_TAB_ONE_BUTTON_ICON:Enable();
		GoH_Frame_Page2:Show();

	else
		-- PAGE ONE
		GoH_SETTINGS_PAGE_TAB_ONE_BUTTON_ICON:Disable();
		GoH_Frame_Page2:Hide();

		GoH_SETTINGS_PAGE_TAB_TWO_BUTTON_ICON:Enable();
		GoH_Frame:Show();

	end

	
	

	-- ###########################
	-- Disable Menu Button for Menu you are on
	-- ###########################
	GoHv5_Settings_MenuButtonSettings:Disable();

	-- ###########################
	-- Hide all other addon menus and show the one you want
	-- ###########################


	-- #######################################################
	-- Match all other addon menus to the Settings location
	-- #######################################################

	-- Release all points before re-assigning or we'll get a lua error
	if (GoH_DeathKnight_Form:IsVisible()) then
		GoH_DeathKnight_Form:ClearAllPoints();
		GoH_DeathKnight_Form:Hide();
		GoH_Form:ClearAllPoints();
		GoH_Form:SetPoint("TOPLEFT", "GoH_DeathKnight_Form");
		GoH_Form:Show();
	else

		GoH_Form:Show();
			end

	GoH_Settings_Set_Menu_Button_Images();

	

end



