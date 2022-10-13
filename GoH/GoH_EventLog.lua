-- #######################################
-- #######################################
-- PLAYER ENTER COMBAT
-- #######################################
-- #######################################
function GoH.events.PLAYER_REGEN_DISABLED()

		-- #######################################

		

			GoH_DND_Combat_Mode_On();

			-- RESET THE TIMER
			GoHv5_DeathKnight_Data.config.GoH_Secondary_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Secondary_Timer_Time = 0;
			-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

		

		-- #######################################

		if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == nil then
			GoHv5_DeathKnight_Data.config.On_Screen_Graphic = "YES";
		end
		if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then

			Show_Fight_Frame();

		end
		
			if GoHv5_DeathKnight_Data.config.Menu_Default_Music == "YES" then
            if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then
					

			PlayMusic("Interface\\AddOns\\GoH\\Music\\EBM.mp3");

						
            end
	end

end



-- #######################################
-- #######################################
-- PLAYER LEAVE COMBAT
-- #######################################
-- #######################################
function GoH.events.PLAYER_REGEN_ENABLED()

		-- #######################################
		
		

			GoH_DND_Combat_Mode_Off();
			
			-- RESET THE TIMER
			GoHv5_DeathKnight_Data.config.GoH_Secondary_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Secondary_Timer_Time = 0;
			-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

		

		-- #######################################

		
		
		if GoHv5_DeathKnight_Data.config.Menu_Default_Music == "YES" then

			-- STOP FIGHTING MUSIC
				StopMusic();
		end

		-- #######################################
end

-- #######################################
-- #######################################
-- PLAYER ENTER PET BATTLE SOUNDS
-- #######################################
-- #######################################
function GoH.events.PET_BATTLE_OPENING_START()

	      if GoHv5_DeathKnight_Data.config.Menu_Pet_Music == "YES" then

				-- PLAY YOUR SOUND
				PlayMusic("Interface\\AddOns\\GoH\\Music\\EBPM.mp3");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
	


end

function GoH.events.PET_BATTLE_CLOSE()

	      if GoHv5_DeathKnight_Data.config.Menu_Pet_Music == "YES" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Clapping.mp3","Master");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end

			-- STOP FIGHTING MUSIC
				StopMusic();
		

		-- #######################################
		-- #######################################
end

-- #######################################
-- #######################################
-- PLAYER ENTER AUCTION HOUSE SOUNDS
-- #######################################
-- #######################################
function GoH.events.AUCTION_HOUSE_SHOW()

	      if GoHv5_DeathKnight_Data.config.Menu_Auction_House_Sound == "YES" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Auction_House_Open.mp3","Master");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
	


end

-- #######################################
-- #######################################
-- PLAYER CLOSE AUCTION HOUSE SOUNDS
-- #######################################
-- #######################################
function GoH.events.AUCTION_HOUSE_CLOSED()

	      if GoHv5_DeathKnight_Data.config.Menu_Auction_House_Sound == "YES" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Auction_House_Close.mp3","Master");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
	


end

-- #######################################
-- #######################################
-- PLAYER MAIL SHOW SOUNDS
-- #######################################
-- #######################################
function GoH.events.MAIL_SHOW ()

	      if GoHv5_DeathKnight_Data.config.Menu_Mail_Show_Sound == "YES" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Mail_Open.mp3","Master");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
	


end

-- #######################################
-- #######################################
-- PLAYER MAIL CLOSED SOUNDS
-- #######################################
-- #######################################
function GoH.events.MAIL_CLOSED()

	      if GoHv5_DeathKnight_Data.config.Menu_Auction_House_Sound == "YES" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Mail_Close.mp3","Master");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
	


end

-- #######################################
-- #######################################
-- PLAYER MERCHANT SHOW SOUNDS
-- #######################################
-- #######################################
function GoH.events.MERCHANT_SHOW()

	      if GoHv5_DeathKnight_Data.config.Menu_Merchant_Show_Sound == "YES" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Merchant_Open.mp3","Master");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
	


end

-- #######################################
-- #######################################
-- PLAYER MAIL CLOSED SOUNDS
-- #######################################
-- #######################################
function GoH.events.MERCHANT_CLOSED()

	      if GoHv5_DeathKnight_Data.config.Menu_Merchant_Show_Sound == "YES" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Merchant_Close.mp3","Master");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
	


end

-- #######################################
-- #######################################
-- PLAYER TRANSMOGRIFY_OPEN SOUNDS
-- #######################################
-- #######################################
function GoH.events.TRANSMOGRIFY_OPEN()

	      if GoHv5_DeathKnight_Data.config.Menu_Transmogrify_Open_Sound == "YES" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Transmog_Open.mp3","Master");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
	


end

-- #######################################
-- #######################################
-- PLAYER TRANSMOGRIFY_CLOSE SOUNDS
-- #######################################
-- #######################################
function GoH.events.TRANSMOGRIFY_CLOSE()

	      if GoHv5_DeathKnight_Data.config.Menu_Transmogrify_Open_Sound == "YES" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Transmog_Close.mp3","Master");
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

			end
	


end

-- #######################################
-- #######################################
-- PLAYER PLAYER DEAD SOUNDS
-- #######################################
-- #######################################
function GoH.events.PLAYER_DEAD()

	      if GoHv5_DeathKnight_Data.config.Menu_Player_Dead_Sound == "YES" then
		  if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then

				-- PLAY YOUR SOUND
				Play_Only_Insults()
				
				-- RESET THE TIMER
				GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
				-- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Ready);

		  end
	end


end


-- #######################################
-- #######################################
-- PLAYER Entering world SOUNDS
-- #######################################
-- #######################################
function GoH.events.LOADING_SCREEN_ENABLED()

	      if GoHv5_DeathKnight_Data.config.Reload_UI == "YES" then
		  if GoHv5_DeathKnight_Data.config.Instance_Mode == "NO" then

				-- PLAY YOUR SOUND
				PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\ReloadUI_" .. GoH_DeathKnight.Gender .. ".mp3","Master")
				
				

		  end
		  end
	


end


if GoHv5_DeathKnight_Data.config.End_Caps == "YES" then

				MainMenuBarArtFrame.LeftEndCap:Hide()
                MainMenuBarArtFrame.RightEndCap:Hide()
				
				
                
end

if GoHv5_DeathKnight_Data.config.BloodArt == "YES" then


           MainMenuBarArtFrame.LeftEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\Deathknight_Blood.tga")
		   MainMenuBarArtFrame.RightEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\Deathknight_Blood.tga")
		   
		   PlayerFrameTexture:ClearAllPoints();
		   PlayerFrameTexture:SetPoint("TOPLEFT", "PlayerFrame", 10, 13);
		   PlayerFrameTexture:SetTexCoord(0, 1, 0, 1)
		   
		   PlayerFrameTexture:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\PlayerFrames\\Deathknight_Blood.tga");





end

if GoHv5_DeathKnight_Data.config.FrostArt == "YES" then


           MainMenuBarArtFrame.LeftEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\Deathknight_Frost.tga")
		   MainMenuBarArtFrame.RightEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\Deathknight_Frost.tga")
		   
		   PlayerFrameTexture:ClearAllPoints();
		   PlayerFrameTexture:SetPoint("TOPLEFT", "PlayerFrame", 10, 13);
		   PlayerFrameTexture:SetTexCoord(0, 1, 0, 1)
		   
		   PlayerFrameTexture:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\PlayerFrames\\Deathknight_Frost.tga");





end

if GoHv5_DeathKnight_Data.config.UnholyArt == "YES" then


           MainMenuBarArtFrame.LeftEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\Deathknight_Unholy.tga")
		   MainMenuBarArtFrame.RightEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\Deathknight_Unholy.tga")
		   
		   PlayerFrameTexture:ClearAllPoints();
		   PlayerFrameTexture:SetPoint("TOPLEFT", "PlayerFrame", 10, 13);
		   PlayerFrameTexture:SetTexCoord(0, 1, 0, 1)
		   
		   PlayerFrameTexture:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\PlayerFrames\\Deathknight_Unholy.tga");





end

if GoHv5_DeathKnight_Data.config.LichKingArt == "YES" then


           MainMenuBarArtFrame.LeftEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\lichking.tga")
		   MainMenuBarArtFrame.RightEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\lichking.tga")
		   
		   PlayerFrameTexture:ClearAllPoints();
		   PlayerFrameTexture:SetPoint("TOPLEFT", "PlayerFrame", 10, 13);
		   PlayerFrameTexture:SetTexCoord(0, 1, 0, 1)
		   
		   PlayerFrameTexture:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\PlayerFrames\\Deathknight_Frost.tga");





end

if GoHv5_DeathKnight_Data.config.DkCrestArt == "YES" then


           MainMenuBarArtFrame.LeftEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\dkcrest.tga")
		   MainMenuBarArtFrame.RightEndCap:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\EndCaps\\dkcrest.tga")
		   
		   PlayerFrameTexture:ClearAllPoints();
		   PlayerFrameTexture:SetPoint("TOPLEFT", "PlayerFrame", 10, 13);
		   PlayerFrameTexture:SetTexCoord(0, 1, 0, 1)
		   
		   PlayerFrameTexture:SetTexture("Interface\\AddOns\\GoH_DeathKnight\\PlayerFrames\\Deathknight_Frost.tga");





end


