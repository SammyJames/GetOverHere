-- #######################################
-- #######################################
--       GOH SOUND FILES
-- #######################################
-- #######################################


-- GUI OPEN BUTTON CLICK
function Play_GUI_Open()
		if (GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds == "YES") and (GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready == "NO") then
				-- BEHOLD THE TOOLS OF CREATION
				if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Behold_The_Tools_Of_Creation_Female.mp3","Master");
				else
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Behold_The_Tools.mp3","Master");
				end
		end
end

-- GUI CLOSE BUTTON CLICK
function Play_GUI_Close()
		if (GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds == "YES") and (GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready == "NO") then
				-- DO YOU FEAR DEATH? HA HA HA HA HA
				if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Do_You_Fear_Death_Hahaha_Female.mp3","Master");
				else
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Do_You_Fear_Death.mp3","Master");
				end
				
		end
end








