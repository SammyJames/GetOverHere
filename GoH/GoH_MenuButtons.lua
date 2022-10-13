-- SETTINGS - HEALTH WARNING EMOTE
function GoH_Settings_HEALTH_EMOTE_OnClick()
	    if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote == "NO" then
	    	GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote = "YES"
    		
	    else
	    	GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote = "NO"
    		
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end



-- SETTINGS - HEALTH WARNING SOUND
function GoH_Settings_HEALTH_SOUND_OnClick()
	    if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Heartbeat.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS - HEALTH 25%
function GoH_Settings_HEALTH_TWENTYFIVE_OnClick()
		GoHv5_DeathKnight_Data.config.Health_Percentage = .25;
		GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "25";
		GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_25");
	    if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound == "YES" then
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Heartbeat.mp3","Master");
    	else
    		
		end
end



-- SETTINGS - HEALTH 20%
function GoH_Settings_HEALTH_TWENTY_OnClick()
		GoHv5_DeathKnight_Data.config.Health_Percentage = .20;
		GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "20";
		GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_20");
	    if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound == "YES" then
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Heartbeat.mp3","Master");
    	else
    		
		end
end
-- SETTINGS - HEALTH 15%
function GoH_Settings_HEALTH_FIFTEEN_OnClick()
		GoHv5_DeathKnight_Data.config.Health_Percentage = .15;
		GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "15";
		GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_15");
	    if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound == "YES" then
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Heartbeat.mp3","Master");
    	else
    		
		end
end
-- SETTINGS - HEALTH 10%
function GoH_Settings_HEALTH_TEN_OnClick()
		GoHv5_DeathKnight_Data.config.Health_Percentage = .10;
		GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "10";
		GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_10");
	    if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound == "YES" then
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Heartbeat.mp3","Master");
    	else
    		
		end
end
-- SETTINGS - HEALTH 5%
function GoH_Settings_HEALTH_FIVE_OnClick()
		GoHv5_DeathKnight_Data.config.Health_Percentage = .05;
		GoHv5_DeathKnight_Data.config.Health_Percentage_Value = "5";
		GoH_Health_Frame_Texture:SetTexture("interface\\Addons\\GoH\\Images\\GoH_Health_5");
	    if GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound == "YES" then
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Heartbeat.mp3","Master");
    	else
    		
		end
end

-- DEATH KNIGHT MENU PAGE TAB TWO
function GoH_Settings_MenuButton_Page_Two_OnClick()
		-- GO TO PAGE TWO
		GoH_SETTINGS_PAGE_TAB_TWO_BUTTON_ICON:Disable();
		GoH_Frame:Hide();

		GoH_SETTINGS_PAGE_TAB_ONE_BUTTON_ICON:Enable();
		GoH_Frame_Page2:Show();

		GoHv5_DeathKnight_Data.config.Settings_Page_Tab = "TWO";
    	
end

-- DEATH KNIGHT MENU PAGE TAB ONE
function GoH_Settings_MenuButton_Page_One_OnClick()
		-- GO TO PAGE ONE
		GoH_SETTINGS_PAGE_TAB_ONE_BUTTON_ICON:Disable();
		GoH_Frame_Page2:Hide();

		GoH_SETTINGS_PAGE_TAB_TWO_BUTTON_ICON:Enable();
		GoH_Frame:Show();

		GoHv5_DeathKnight_Data.config.Settings_Page_Tab = "ONE";
    	
end





-- SETTINGS PLAY FATALITY SOUND
function GoH_Settings_MenuButton_PlayFatalitySound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Fatality_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Fatality_Sound = "YES"
	    	Play_Random_Finish();
	    else
	    	GoHv5_DeathKnight_Data.config.Fatality_Sound = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY FIGHT MUSIC
function GoH_Settings_MenuButton_PlayFightMusic_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Fight_Music == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY FIGHT MUSIC TWENTY
function GoH_Settings_MenuButton_PlayFightMusicTwenty_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Twenty == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Twenty = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Twenty = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY FIGHT MUSIC THIRTY
function GoH_Settings_MenuButton_PlayFightMusicThirty_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Thirty == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Thirty = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Thirty = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY FIGHT MUSIC FORTY
function GoH_Settings_MenuButton_PlayFightMusicForty_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Forty == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Forty = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Forty = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY FIGHT MUSIC FIFTY
function GoH_Settings_MenuButton_PlayFightMusicFifty_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Fifty == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Fifty = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Fifty = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY FIGHT MUSIC SIXTY
function GoH_Settings_MenuButton_PlayFightMusicSixty_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Sixty == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Sixty = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Sixty = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY FIGHT MUSIC SEVENTY
function GoH_Settings_MenuButton_PlayFightMusicSeventy_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Seventy == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Seventy = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Seventy = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY DEFAULT MUSIC
function GoH_Settings_MenuButton_PlayDefaultMusic_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Default_Music == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Default_Music = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Default_Music = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY PET MUSIC
function GoH_Settings_MenuButton_PlayPetMusic_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Pet_Music == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Pet_Music = "YES"
	    	PlayMusic("Interface\\AddOns\\GoH\\Music\\EBPM.mp3");
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Pet_Music = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY AUCTION HOUSE SOUND
function GoH_Settings_MenuButton_PlayAuctionHouseSound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Auction_House_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Auction_House_Sound = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Auction_House_Open.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Auction_House_Sound = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY MAIL SHOW SOUND
function GoH_Settings_MenuButton_PlayMailShowSound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Mail_Show_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Mail_Show_Sound = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Mail_Open.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Mail_Show_Sound = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY MERCHANT SHOW SOUND
function GoH_Settings_MenuButton_PlayMerchantShowSound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Merchant_Show_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Merchant_Show_Sound = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Merchant_Open.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Merchant_Show_Sound = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY TRANSMOGRIFY_OPEN SOUND
function GoH_Settings_MenuButton_PlayTransmogrifyOpenSound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Transmogrify_Open_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Transmogrify_Open_Sound = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Transmog_Open.mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Transmogrify_Open_Sound = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY Player_Dead SOUND
function GoH_Settings_MenuButton_PlayPlayerDeadSound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Player_Dead_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Player_Dead_Sound = "YES"
	    	Play_Only_Insults()
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Player_Dead_Sound = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS PLAY FIGHT SOUND
function GoH_Settings_MenuButton_PlayFightSound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_Fight_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Sound = "YES"
	    	Play_Random_Combat();
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_Fight_Sound = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS USE GENDER BENDER BUTTON
function GoH_Settings_MenuButton_Gender_Bender_OnClick()
	    if GoHv5_DeathKnight_Data.config.Gender_Bender == "NO" then
	    	GoHv5_DeathKnight_Data.config.Gender_Bender = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Gender_Bender = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

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
	if GoH_DeathKnight.Gender == "Female" then
		Settings_Female_Texture:Show();
	else
		Settings_Female_Texture:Hide();
	end

	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Gender_Bender_" .. GoH_DeathKnight.Gender .. ".mp3","Master")

end

-- SETTINGS Reload
function GoH_Settings_MenuButton_Reload_OnClick()
	    
		ReloadUI();
	    	
	    end





-- SETTINGS PLAY OPEN AND CLOSE MENU SOUNDS
function GoH_Settings_MenuButton_PlayOpenAndCloseSound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds == "NO" then
	    	GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds = "YES"
	    	-- BEHOLD THE TOOLS OF CREATION
				if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Behold_The_Tools_Of_Creation_Female.mp3","Master");
				else
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Behold_The_Tools.mp3","Master");
				end
	    else
	    	GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds = "NO"
	    	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end







-- GOH MENU:   DO_EMOTE
function GoH_Settings_MenuButton_Do_Emote_OnClick()
	    if GoHv5_DeathKnight_Data.config.Do_Emote == "NO" then
	    	GoHv5_DeathKnight_Data.config.Do_Emote = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Do_Emote = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end














-- SETTINGS OPTION:  AUTO-DND AUCTION HOUSE
function GoH_Settings_AutoDND_Auction_House_OnClick()

		GoH5_DeathKnight_SavedVariables();

	    if GoHv5_DeathKnight_Data.config.AutoDND_Auction_House == "NO" then
	    	GoHv5_DeathKnight_Data.config.AutoDND_Auction_House = "YES"
			
	    else
	    	GoHv5_DeathKnight_Data.config.AutoDND_Auction_House = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	
end

-- SETTINGS OPTION:  AUTO-DND IN COMBAT
function GoH_Settings_AutoDND_In_Combat_OnClick()

		GoH5_DeathKnight_SavedVariables();

	    if GoHv5_DeathKnight_Data.config.AutoDND_In_Combat == "NO" then
			
	    	GoHv5_DeathKnight_Data.config.AutoDND_In_Combat = "YES"
	    else
	    	GoHv5_DeathKnight_Data.config.AutoDND_In_Combat = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	
end



-- SETTINGS SHOW MINIMAP ICON
function GoH_Settings_MenuButton_ShowMinimapIcon_OnClick()
	    if GoHv5_DeathKnight_Data.config.Show_Minimap_Icon == "NO" then
	    	GoHv5_DeathKnight_Data.config.Show_Minimap_Icon = "YES"
	    	
	    	GoH_MinimapButton:Show();
	    else
	    	GoHv5_DeathKnight_Data.config.Show_Minimap_Icon = "NO"
	    	
	    	GoH_MinimapButton:Hide();
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end



-- SETTINGS USE MK FONT
function GoH_Settings_Use_MK_Font_OnClick()

	if GoHv5_DeathKnight_Data.config.Use_MK_Font == "NO" then
		GoHv5_DeathKnight_Data.config.Use_MK_Font = "YES";
		
   		       UIErrorsFrame:SetFont("Interface\\AddOns\\GoH\\Font\\AKIRA__.ttf", 25, "OUTLINE")
		       UIErrorsFrame:AddMessage("MK FONT: ON", 1.0, 0.25, 0.25);
	else
		GoHv5_DeathKnight_Data.config.Use_MK_Font = "NO";
		
   		       UIErrorsFrame:SetFont("Fonts\\FRIZQT__.ttf", 16)
   		       -- DEFAULT_CHAT_FRAME:SetFont("Fonts\\ARIALN.TTF", 14)
		       UIErrorsFrame:AddMessage("MK FONT: OFF", 1.0, 0.25, 0.25);
	end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- SETTINGS USE HEALTH WARNING
function GoH_Settings_Use_Health_Warning_OnClick()

	if GoHv5_DeathKnight_Data.config.Use_Health_Warning == "NO" then
		GoHv5_DeathKnight_Data.config.Use_Health_Warning = "YES";
		
	else
		GoHv5_DeathKnight_Data.config.Use_Health_Warning = "NO";
		
	end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end







-- SETTING: USE MOUSE OVER TOOLTIP
function GoH_Settings_MenuButton_UseMouseOverTooltip_OnClick()
	
	SMouseTarget_Console("gohtip");

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- GOH MENU:   INSTANCE_MODE
function GoH_Settings_MenuButton_Instance_Mode_OnClick()
	    if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
	    	GoHv5_DeathKnight_Data.config.Instance_Mode = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Instance_Mode = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

-- GOH MENU:   ON_SCREEN_GRAPHIC
function GoH_Settings_MenuButton_On_Screen_Graphic_OnClick()
	    if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "NO" then
	    	GoHv5_DeathKnight_Data.config.On_Screen_Graphic = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.On_Screen_Graphic = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end















-- GOH MENU:   EMOTE
function GoH_Settings_MenuButton_Emote_OnClick()
	    if GoHv5_DeathKnight_Data.config.Emote == "NO" then
	    	GoHv5_DeathKnight_Data.config.Emote = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Emote = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

-- GOH MENU:   SAY
function GoH_Settings_MenuButton_Say_OnClick()
	    if GoHv5_DeathKnight_Data.config.Say == "NO" then
	    	GoHv5_DeathKnight_Data.config.Say = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Say = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

-- GOH MENU:   YELL
function GoH_Settings_MenuButton_Yell_OnClick()
	    if GoHv5_DeathKnight_Data.config.Yell == "NO" then
	    	GoHv5_DeathKnight_Data.config.Yell = "YES"
	    	;
	    else
	    	GoHv5_DeathKnight_Data.config.Yell = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

-- GOH MENU:   EMOTE
function GoH_Settings_MenuButton_Interrupt_Emote_OnClick()
	    if GoHv5_DeathKnight_Data.config.Interrupt_Emote == "NO" then
	    	GoHv5_DeathKnight_Data.config.Interrupt_Emote = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Interrupt_Emote = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

-- GOH MENU:   SAY
function GoH_Settings_MenuButton_Interrupt_Say_OnClick()
	    if GoHv5_DeathKnight_Data.config.Interrupt_Say == "NO" then
	    	GoHv5_DeathKnight_Data.config.Interrupt_Say = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Interrupt_Say = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

-- GOH MENU:   YELL
function GoH_Settings_MenuButton_Interrupt_Yell_OnClick()
	    if GoHv5_DeathKnight_Data.config.Interrupt_Yell == "NO" then
	    	GoHv5_DeathKnight_Data.config.Interrupt_Yell = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.Interrupt_Yell = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

-- GOH MENU:   END CAPS
function GoH_Settings_MenuButton_End_Caps_OnClick()
	    if GoHv5_DeathKnight_Data.config.End_Caps == "NO" then
	    	GoHv5_DeathKnight_Data.config.End_Caps = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.End_Caps = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   BLOOD ART
function GoH_Settings_MenuButton_BloodArt_OnClick()
	    if GoHv5_DeathKnight_Data.config.BloodArt == "NO" then
	    	GoHv5_DeathKnight_Data.config.BloodArt = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.BloodArt = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   UNHOLY ART
function GoH_Settings_MenuButton_UnholyArt_OnClick()
	    if GoHv5_DeathKnight_Data.config.UnholyArt == "NO" then
	    	GoHv5_DeathKnight_Data.config.UnholyArt = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.UnholyArt = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   FROST ART
function GoH_Settings_MenuButton_FrostArt_OnClick()
	    if GoHv5_DeathKnight_Data.config.FrostArt == "NO" then
	    	GoHv5_DeathKnight_Data.config.FrostArt = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.FrostArt = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   Lich King ART
function GoH_Settings_MenuButton_LichKingArt_OnClick()
	    if GoHv5_DeathKnight_Data.config.LichKingArt == "NO" then
	    	GoHv5_DeathKnight_Data.config.LichKingArt = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.LichKingArt = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end

-- DEATH KNIGHT SPELL:   Dk Crest ART
function GoH_Settings_MenuButton_DkCrestArt_OnClick()
	    if GoHv5_DeathKnight_Data.config.DkCrestArt == "NO" then
	    	GoHv5_DeathKnight_Data.config.DkCrestArt = "YES"
	    	
	    else
	    	GoHv5_DeathKnight_Data.config.DkCrestArt = "NO"
			
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_DeathKnight_Set_Menu_Button_Images();

end







-- GOH MENU:   RELOAD_UI
function GoH_Settings_MenuButton_Reload_UI_OnClick()
	    if GoHv5_DeathKnight_Data.config.Reload_UI == "NO" then
	    	GoHv5_DeathKnight_Data.config.Reload_UI = "YES"
	    	PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\ReloadUI_" .. GoH_DeathKnight.Gender .. ".mp3","Master")
	    else
	    	GoHv5_DeathKnight_Data.config.Reload_UI = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end



-- GOH MENU:   TAUNT
function GoH_Settings_MenuButton_Taunt_OnClick()
	    if GoHv5_DeathKnight_Data.config.Taunt == "NO" then
	    	GoHv5_DeathKnight_Data.config.Taunt = "YES"
	    	Play_Random_DEATHGRIP_Sound();
	    else
	    	GoHv5_DeathKnight_Data.config.Taunt = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

-- DEATH KNIGHT INCLUDE HEADLESS HORSEMAN IDIOT SOUND
function GoH_Settings_Include_Horseman_Sound_OnClick()
	    if GoHv5_DeathKnight_Data.config.Include_Headless_Horseman_Sound == "NO" then
	    	GoHv5_DeathKnight_Data.config.Include_Headless_Horseman_Sound = "YES"
 		   	if (GoH_DeathKnight.Gender == "Female") then
						PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_Over_Here_You_Idiot_Female.mp3","Master");
				else
						PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\You_Idiot.mp3","Master");
				end
	    else
	    	GoHv5_DeathKnight_Data.config.Include_Headless_Horseman_Sound = "NO"
 		   	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- DEATH KNIGHT INCLUDE RUDE SOUND
function GoH_Settings_Include_Rude_Sounds_OnClick()
	    if GoHv5_DeathKnight_Data.config.Include_Rude_Sounds == "NO" then
	    	GoHv5_DeathKnight_Data.config.Include_Rude_Sounds = "YES"
 		   	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_The_Fuck_Over_Here_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
	    else
	    	GoHv5_DeathKnight_Data.config.Include_Rude_Sounds = "NO"
 		   	
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();
end

-- GOH MENU:   INTERRUPT
function GoH_Settings_MenuButton_Interrupt_OnClick()
	    if GoHv5_DeathKnight_Data.config.Interrupt == "NO" then
	    	GoHv5_DeathKnight_Data.config.Interrupt = "YES"
	    	Play_Random_Interrupt()
	    else
	    	GoHv5_DeathKnight_Data.config.Interrupt = "NO"
	    end

	-- REFRESH TEXT AND BUTTON IMAGES
	GoH_Settings_Set_Menu_Button_Images();

end

































-- ###################################################################################################
-- ###################################################################################################
-- THIS NEXT FUNCTION IS WHERE ALL YOUR SPELL IMAGES AND TEXT ARE CALLED, SET AND REFRESHED.
-- PUT ALL OF YOUR DEATH KNIGHT SPELLS WITHIN SO YOU JUST NEED TO CALL ONE FUNCTION TO REFRESH ALL.
-- BASICALLY EVERY SPELL YOU ADD ABOVE WILL BE WITHIN THE FUNCTION BELOW AND EVERY SPELL ABOVE WILL CALL
-- THE FUNCTION BELOW. EVERY TIME YOU CHECK SOMETHING IN THE DEATH KNIGHT MENU, BELOW WILL REFRESH IT ALL.
-- ###################################################################################################
-- ###################################################################################################
function GoH_Settings_Set_Menu_Button_Images()

	GoH5_DeathKnight_SavedVariables();
	
	
	
	
	
	
	
	
	
	
		
	
	
	
	
	
	
	
		
		


--Setting's		
	
	
	    
	
	
	
	
	
	-- DO_EMOTE MENU 
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_DO_EMOTE:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_DO_EMOTE:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_DO_EMOTE:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Do_Emote == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_DO_EMOTE:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Do_Emote_Text:SetText("|cFF00AA00Do /Emote|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_DO_EMOTE:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Do_Emote_Text:SetText("|cFFFF0000Do /Emote|r");

	end
	
	-- END CAPS MENU 
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_END_CAPS:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_END_CAPS:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_END_CAPS:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.End_Caps == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_END_CAPS:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_End_Caps_Text:SetText("|cFF00AA00 Enable End Caps|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_END_CAPS:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_End_Caps_Text:SetText("|cFFFF0000 Disable End Caps|r");

	end
	if GoHv5_DeathKnight_Data.config.End_Caps == "NO" then
		GoH_SETTINGS_BLOODART_ICON:Enable();
		GoH_SETTINGS_FROSTART_ICON:Enable();
		GoH_SETTINGS_UNHOLYART_ICON:Enable();
		GoH_SETTINGS_LICHKINGART_ICON:Enable();
		GoH_SETTINGS_DKCRESTART_ICON:Enable();
		
	else	
	    GoH_SETTINGS_BLOODART_ICON:Disable();
		GoH_SETTINGS_FROSTART_ICON:Disable();
		GoH_SETTINGS_UNHOLYART_ICON:Disable();
		GoH_SETTINGS_LICHKINGART_ICON:Disable();
		GoH_SETTINGS_DKCRESTART_ICON:Disable();
		
		
	end
	
	--     BLOOD_ART
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_SETTINGS_BLOODART_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_BLOODART_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_BLOODART_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.BloodArt == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_SETTINGS_BLOODART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_SETTINGS_BLOODART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
			
			

		end
		
		
		
		
		
		 --     FROST_ART
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_SETTINGS_FROSTART_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_FROSTART_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_FROSTART_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.FrostArt == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_SETTINGS_FROSTART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_SETTINGS_FROSTART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
			
			

		end
		
		
		
		
		
		 --     UNHOLY_ART
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_SETTINGS_UNHOLYART_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_UNHOLYART_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_UNHOLYART_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.UnholyArt == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_SETTINGS_UNHOLYART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_SETTINGS_UNHOLYART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
			
			

		end
		
		--     LICH KING_ART
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_SETTINGS_LICHKINGART_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_LICHKINGART_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_LICHKINGART_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.LichKingArt == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_SETTINGS_LICHKINGART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_SETTINGS_LICHKINGART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
			
			

		end
		
			--     DK CREST_ART
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_SETTINGS_DKCRESTART_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_DKCRESTART_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_DKCRESTART_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.DkCrestArt == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_SETTINGS_DKCRESTART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_SETTINGS_DKCRESTART_ICON:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
			
			

		end
		
	    
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	-- ###################################################################################################	

	
	
	
	

	-- ###################################################################################################
	-- ###################################################################################################
	-- SHOW MOUSE OVER TOOLTIP ICON
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_USE_MOUSEOVER_TOOLTIP:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_USE_MOUSEOVER_TOOLTIP:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_USE_MOUSEOVER_TOOLTIP:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (SMouseTarget_Saved["off"] == 1) then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_USE_MOUSEOVER_TOOLTIP:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Use_MouseOverTooltip_Text:SetText("|cFF00AA00Mouse Over Tooltip?|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_USE_MOUSEOVER_TOOLTIP:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Use_MouseOverTooltip_Text:SetText("|cFFFF0000Mouse Over Tooltip?|r");

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- INSTANCE_MODE ICON
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_INSTANCE_MODE:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INSTANCE_MODE:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INSTANCE_MODE:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Instance_Mode == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_INSTANCE_MODE:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Instance_Mode_Text:SetText("|cFF00AA00Instance Mode?|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_INSTANCE_MODE:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Instance_Mode_Text:SetText("|cFFFF0000Instance Mode?|r");

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- ON_SCREEN_GRAPHIC ICON
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_ON_SCREEN_GRAPHIC:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_ON_SCREEN_GRAPHIC:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_ON_SCREEN_GRAPHIC:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_ON_SCREEN_GRAPHIC:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_On_Screen_Graphic_Text:SetText("|cFF00AA00On Screen Graphic?|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_ON_SCREEN_GRAPHIC:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_On_Screen_Graphic_Text:SetText("|cFFFF0000OnScreen Graphic?|r");

	end
	
	
        -- ###################################################################################################
       -- ###################################################################################################
		--     USE HEALTH WARNING SOUND
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_SETTINGS_USE_HEALTH_WARNING_SOUND_ICON:SetHighlightTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Sound_HOVER");
		GoH_SETTINGS_USE_HEALTH_WARNING_SOUND_ICON:SetPushedTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Sound_HOVER");
		GoH_SETTINGS_USE_HEALTH_WARNING_SOUND_ICON:SetDisabledTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Sound_DISABLE");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_SETTINGS_USE_HEALTH_WARNING_SOUND_ICON:SetNormalTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Sound_ON");

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_SETTINGS_USE_HEALTH_WARNING_SOUND_ICON:SetNormalTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Sound_OFF");
		end
        -- ###################################################################################################
       -- ###################################################################################################
		--     USE HEALTH WARNING EMOTE
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_SETTINGS_USE_HEALTH_WARNING_EMOTE_ICON:SetHighlightTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Emote_HOVER");
		GoH_SETTINGS_USE_HEALTH_WARNING_EMOTE_ICON:SetPushedTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Emote_HOVER");
		GoH_SETTINGS_USE_HEALTH_WARNING_EMOTE_ICON:SetDisabledTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Emote_DISABLE");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Use_Health_Warning_Emote == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_SETTINGS_USE_HEALTH_WARNING_EMOTE_ICON:SetNormalTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Emote_ON");

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_SETTINGS_USE_HEALTH_WARNING_EMOTE_ICON:SetNormalTexture("Interface\\AddOns\\GoH\\Images\\GoH_Button_Emote_OFF");
		end
        
        -- ###################################################################################################
	-- ###################################################################################################
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- USE HEALTH WARNING ICON
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_USE_HEALTH_WARNING_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_USE_HEALTH_WARNING_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_USE_HEALTH_WARNING_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Use_Health_Warning == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_USE_HEALTH_WARNING_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		GoH_Health_Frame:Show();
		GoH_Disabled_Health_Frame:Hide();
		GoH_SETTINGS_USE_HEALTH_WARNING_SOUND_ICON:Enable();
		GoH_SETTINGS_USE_HEALTH_WARNING_EMOTE_ICON:Enable();
		Settings_Use_Health_Warning_Icon_Text:SetText("|cFF00AA00Health Warning?|r");

	else
		GoH_SETTINGS_USE_HEALTH_WARNING_SOUND_ICON:Disable();
		GoH_SETTINGS_USE_HEALTH_WARNING_EMOTE_ICON:Disable();
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_USE_HEALTH_WARNING_ICON:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		if (GoHv5_DeathKnight_Data.config.Use_Mana_Warning == "YES") then
			GoH_Health_Frame:Hide();
			GoH_Disabled_Health_Frame:Show();
		else
			
			
			GoH_Health_Frame:Hide();
		end
		Settings_Use_Health_Warning_Icon_Text:SetText("|cFFFF0000Health Warning?|r");
	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- USE MORTAL KOMBAT MK FONT ICON
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_USE_MK_FONT_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_USE_MK_FONT_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_USE_MK_FONT_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Use_MK_Font == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_USE_MK_FONT_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Use_MK_Font_Icon_Text:SetText("|cFF00AA00Use GoH MK Font?|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_USE_MK_FONT_ICON:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Use_MK_Font_Icon_Text:SetText("|cFFFF0000Use GoH MK Font?|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- SHOW OR HIDE THE MINIMAP ICON
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_SHOW_MINIMAP_ICON:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_SHOW_MINIMAP_ICON:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_SHOW_MINIMAP_ICON:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Show_Minimap_Icon == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_SHOW_MINIMAP_ICON:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Show_Minimap_Icon_Text:SetText("|cFF00AA00Minimap Icon?|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_SHOW_MINIMAP_ICON:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Show_Minimap_Icon_Text:SetText("|cFFFF0000Minimap Icon?|r");

	end
	
	
	
	
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY FATALITY SOUND
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_FATALITY_SOUND:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FATALITY_SOUND:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FATALITY_SOUND:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Fatality_Sound == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_FATALITY_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Fatality_Sound_Text:SetText("|cFF00AA00'Fatality!'|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_FATALITY_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Fatality_Sound_Text:SetText("|cFFFF0000'Fatality!'|r");

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY FIGHT SOUND
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_FIGHT_SOUND:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_SOUND:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_SOUND:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Fight_Sound == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_FIGHT_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Fight_Sound_Text:SetText("|cFF00AA00'Fight!'|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_FIGHT_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Fight_Sound_Text:SetText("|cFFFF0000'Fight!'|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY FIGHT MUSIC
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_FIGHT_MUSIC:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Fight_Music == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Fight_Music_Text:SetText("|cFF00AA00EBM Plugin|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Fight_Music_Text:SetText("|cFFFF0000EBM Plugin|r");

	end
	
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY FIGHT MUSIC TWENTY
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_TWENTY:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_TWENTY:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_TWENTY:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Twenty == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_TWENTY:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_TWENTY:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY FIGHT MUSIC THIRTY
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_THIRTY:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_THIRTY:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_THIRTY:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Thirty == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_THIRTY:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_THIRTY:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY FIGHT MUSIC FORTY
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_FORTY:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_FORTY:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_FORTY:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Forty == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_FORTY:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_FORTY:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY FIGHT MUSIC FIFTY
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_FIFTY:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_FIFTY:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_FIFTY:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Fifty == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_FIFTY:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_FIFTY:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY FIGHT MUSIC SIXTY
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_SIXTY:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_SIXTY:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_SIXTY:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Sixty == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_SIXTY:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_SIXTY:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY FIGHT MUSIC SEVENTY
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_SEVENTY:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_SEVENTY:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_FIGHT_MUSIC_SEVENTY:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Fight_Music_Seventy == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_SEVENTY:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_SEVENTY:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	
	
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY DEFAULT MUSIC
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_DEFAULT_MUSIC:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_DEFAULT_MUSIC:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_DEFAULT_MUSIC:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Default_Music == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_DEFAULT_MUSIC:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Default_Music_Text:SetText("|cFF00AA00'Default!' Music|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_DEFAULT_MUSIC:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Default_Music_Text:SetText("|cFFFF0000'Default!' Music|r");

	end
	if GoHv5_DeathKnight_Data.config.Menu_Default_Music == "NO" then
		GoH_SETTINGS_PLAY_FIGHT_MUSIC:Enable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_TWENTY:Enable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_THIRTY:Enable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_FORTY:Enable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_FIFTY:Enable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_SIXTY:Enable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_SEVENTY:Enable();
	else
		GoH_SETTINGS_PLAY_FIGHT_MUSIC:Disable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_TWENTY:Disable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_THIRTY:Disable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_FORTY:Disable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_FIFTY:Disable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_SIXTY:Disable();
		GoH_SETTINGS_PLAY_FIGHT_MUSIC_SEVENTY:Disable();
	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY PET MUSIC
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_PET_MUSIC:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_PET_MUSIC:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_PET_MUSIC:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Pet_Music == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_PET_MUSIC:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Pet_Music_Text:SetText("|cFF00AA00'Pet Battle!' |r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_PET_MUSIC:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Pet_Music_Text:SetText("|cFFFF0000'Pet Battle!' |r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY AUCTION HOUSE SOUND
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_AUCTION_HOUSE_SOUND:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_AUCTION_HOUSE_SOUND:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_AUCTION_HOUSE_SOUND:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Auction_House_Sound == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_AUCTION_HOUSE_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Auction_House_Sound_Text:SetText("|cFF00AA00'Auction House!'|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_AUCTION_HOUSE_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Auction_House_Sound_Text:SetText("|cFFFF0000'Auction House!'|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY MAIL SHOW SOUND
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_MAIL_SHOW_SOUND:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_MAIL_SHOW_SOUND:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_MAIL_SHOW_SOUND:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Mail_Show_Sound == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_MAIL_SHOW_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Mail_Show_Sound_Text:SetText("|cFF00AA00'Mail'|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_MAIL_SHOW_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Mail_Show_Sound_Text:SetText("|cFFFF0000'Mail'|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY MERCHANT SHOW SOUND
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_MERCHANT_SHOW_SOUND:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_MERCHANT_SHOW_SOUND:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_MERCHANT_SHOW_SOUND:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Merchant_Show_Sound == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_MERCHANT_SHOW_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Merchant_Show_Sound_Text:SetText("|cFF00AA00'Merchant'|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_MERCHANT_SHOW_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Merchant_Show_Sound_Text:SetText("|cFFFF0000'Merchant'|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY TRANSMOGRIFY_OPEN SOUND
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_TRANSMOGRIFY_OPEN_SOUND:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_TRANSMOGRIFY_OPEN_SOUND:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_TRANSMOGRIFY_OPEN_SOUND:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Transmogrify_Open_Sound == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_TRANSMOGRIFY_OPEN_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Transmogrify_Open_Sound_Text:SetText("|cFF00AA00'Transmogrify!'|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_TRANSMOGRIFY_OPEN_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Transmogrify_Open_Sound_Text:SetText("|cFFFF0000'Transmogrify'|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY PLAYER_DEAD SOUND
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_PLAYER_DEAD_SOUND:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_PLAYER_DEAD_SOUND:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_PLAYER_DEAD_SOUND:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_Player_Dead_Sound == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_PLAYER_DEAD_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Player_Dead_Sound_Text:SetText("|cFF00AA00'Player Dead!'|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_PLAYER_DEAD_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Player_Dead_Sound_Text:SetText("|cFFFF0000'Player Dead!'|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- SETTINGS USE GENDER BENDER
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_GENDER_BENDER_OPTION:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_GENDER_BENDER_OPTION:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_GENDER_BENDER_OPTION:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Gender_Bender == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_GENDER_BENDER_OPTION:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Gender_Bender_Text:SetText("|cFF00AA00Gender Bender?|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_GENDER_BENDER_OPTION:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Gender_Bender_Text:SetText("|cFFFF0000Gender Bender?|r");

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- Reload
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_RELOAD:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_RELOAD:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_RELOAD:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_RELOAD:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		
         Settings_Reload_Text:SetText("|cFF00AA00Reloads UI|r");


	
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- PLAY OPEN AND CLOSE MENU SOUNDS
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_PLAY_OPEN_AND_CLOSE_SOUND:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_OPEN_AND_CLOSE_SOUND:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_PLAY_OPEN_AND_CLOSE_SOUND:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_PLAY_OPEN_AND_CLOSE_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Play_Open_and_Close_Sounds_Text:SetText("|cFF00AA00'Menu'|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_PLAY_OPEN_AND_CLOSE_SOUND:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Play_Open_and_Close_Sounds_Text:SetText("|cFFFF0000'Menu'|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- RELOAD_UI MENU SOUNDS
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_RELOAD_UI:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_RELOAD_UI:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_RELOAD_UI:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Reload_UI == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_RELOAD_UI:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Reload_UI_Text:SetText("|cFF00AA00Reload_Sound|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_RELOAD_UI:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Reload_UI_Text:SetText("|cFFFF0000Reload_Sound|r");

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- EMOTE MENU 
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_EMOTE:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_EMOTE:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_EMOTE:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Emote == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_EMOTE:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Emote_Text:SetText("|cFF00AA00Emote|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_EMOTE:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Emote_Text:SetText("|cFFFF0000Emote|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- SAY MENU 
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_SAY:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_SAY:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_SAY:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Say == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_SAY:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_SAY:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- YELL MENU 
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_YELL:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_YELL:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_YELL:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Yell == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_YELL:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_YELL:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- TAUNT MENU SOUNDS
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_TAUNT:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_TAUNT:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_TAUNT:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Taunt == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_TAUNT:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Taunt_Text:SetText("|cFF00AA00Taunt|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_TAUNT:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Taunt_Text:SetText("|cFFFF0000Taunt|r");

	end
	if GoHv5_DeathKnight_Data.config.Taunt == "NO" then
	
	    GoH_SETTINGS_INCLUDE_HORSEMAN:Disable();
		GoH_SETTINGS_INCLUDE_RUDE:Disable();
		GoH_SETTINGS_YELL:Disable();
		GoH_SETTINGS_SAY:Disable();
		GoH_SETTINGS_EMOTE:Disable();						
		
	else
	
        GoH_SETTINGS_INCLUDE_HORSEMAN:Enable();
		GoH_SETTINGS_INCLUDE_RUDE:Enable();	
	    GoH_SETTINGS_YELL:Enable();
		GoH_SETTINGS_SAY:Enable();
		GoH_SETTINGS_EMOTE:Enable();						
		
		
	end
	
	
		
	-- INCLUDE RUDE SOUNDS
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_SETTINGS_INCLUDE_RUDE:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_INCLUDE_RUDE:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_INCLUDE_RUDE:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Include_Rude_Sounds == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_SETTINGS_INCLUDE_RUDE:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_SETTINGS_INCLUDE_RUDE:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
			

		end	
		
		-- INCLUDE HEADLESS HORSEMAN IDIOT SOUND
		-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
		GoH_SETTINGS_INCLUDE_HORSEMAN:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_INCLUDE_HORSEMAN:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
		GoH_SETTINGS_INCLUDE_HORSEMAN:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

		-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
		if (GoHv5_DeathKnight_Data.config.Include_Headless_Horseman_Sound == "YES") then
			-- CHANGE THE ICON TO ENABLED
			GoH_SETTINGS_INCLUDE_HORSEMAN:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
			

		else
			-- CHANGE THE ICON TO DISABLED
			GoH_SETTINGS_INCLUDE_HORSEMAN:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
			

		end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- INTERRUPT_EMOTE MENU 
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_INTERRUPT_EMOTE:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INTERRUPT_EMOTE:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INTERRUPT_EMOTE:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Interrupt_Emote == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_INTERRUPT_EMOTE:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Interrupt_Emote_Text:SetText("|cFF00AA00Emote|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_INTERRUPT_EMOTE:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Interrupt_Emote_Text:SetText("|cFFFF0000Emote|r");

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- SAY MENU 
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_INTERRUPT_SAY:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INTERRUPT_SAY:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INTERRUPT_SAY:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Interrupt_Say == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_INTERRUPT_SAY:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_INTERRUPT_SAY:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	-- ###################################################################################################
	-- ###################################################################################################
	-- YELL MENU 
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_INTERRUPT_YELL:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INTERRUPT_YELL:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INTERRUPT_YELL:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Interrupt_Yell == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_INTERRUPT_YELL:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_INTERRUPT_YELL:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		

	end
	
	-- ###################################################################################################
	-- ###################################################################################################
	-- INTERRUPT MENU SOUNDS
	-- ## DEFAULT ICON STATES WHICH DO NOT CHANGE
	GoH_SETTINGS_INTERRUPT:SetHighlightTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INTERRUPT:SetPushedTexture("interface\\raidframe\\readycheck-ready.blp");
	GoH_SETTINGS_INTERRUPT:SetDisabledTexture("interface\\spellshadow\\spell-shadow-unacceptable.blp");

	-- CHECK THE SAVED VARIABLE TO SEE IF USER HAS SOUND ENABLED FOR THIS SPELL
	if (GoHv5_DeathKnight_Data.config.Interrupt == "YES") then
		-- CHANGE THE ICON TO ENABLED
		GoH_SETTINGS_INTERRUPT:SetNormalTexture("interface\\raidframe\\readycheck-ready.blp");
		-- CHANGE THE TEXT TO GREEN
		Settings_Interrupt_Text:SetText("|cFF00AA00Interrupt|r");

	else
		-- CHANGE THE ICON TO DISABLED
		GoH_SETTINGS_INTERRUPT:SetNormalTexture("interface\\raidframe\\readycheck-notready.blp");
		-- CHANGE THE TEXT TO RED
		Settings_Interrupt_Text:SetText("|cFFFF0000Interrupt|r");

	end
	if GoHv5_DeathKnight_Data.config.Interrupt == "NO" then
		GoH_SETTINGS_INTERRUPT_YELL:Disable();
		GoH_SETTINGS_INTERRUPT_SAY:Disable();
		GoH_SETTINGS_INTERRUPT_EMOTE:Disable();
		
		
	else	
	    GoH_SETTINGS_INTERRUPT_YELL:Enable();
		GoH_SETTINGS_INTERRUPT_SAY:Enable();
		GoH_SETTINGS_INTERRUPT_EMOTE:Enable();
		
		
		
	end
	
	
	
	
	
	
	-- ###################################################################################################
	-- ###################################################################################################

	

end


