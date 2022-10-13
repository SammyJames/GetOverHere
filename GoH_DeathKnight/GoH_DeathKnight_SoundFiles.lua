-- #######################################
-- #######################################
--       GOH DEATH KNIGHT SOUND FILES
-- #######################################
-- #######################################


-- GUI OPEN BUTTON CLICK
function Play_DeathKnight_GUI_Open()
		if (GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds == "YES") and (GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready == "NO") then
			if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Behold_The_Tools_Of_Creation_Female.mp3","Master");
				else
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Behold_The_Tools.mp3","Master");
				end
				
		end		
end

-- GUI CLOSE BUTTON CLICK
function Play_DeathKnight_GUI_Close()
		if (GoHv5_DeathKnight_Data.config.Menu_OpenClose_Sounds == "YES") and (GoHv5_DeathKnight_Data.config.GoH_MenuOpenedAlready == "NO") then
				-- DO YOU FEAR DEATH? HA HA HA HA HA
				if (GoH_DeathKnight.Gender == "Female") then
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Do_You_Fear_Death_Hahaha_Female.mp3","Master");
				else
					PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Do_You_Fear_Death.mp3","Master");
				end
				
		end		
end






function Play_Random_Combat()

    GoH_DeathKnight.NumberRandom = math.random(3);
	
	
	
	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

	
         PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Fight_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 
		 
    elseif (GoH_DeathKnight.NumberRandom == 2) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Fight2_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 
	elseif (GoH_DeathKnight.NumberRandom == 3) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Fight3_" .. GoH_DeathKnight.Gender .. ".mp3","Master");	 

	end

end

function Play_Random_Finish()

	GoH_DeathKnight.NumberRandom = math.random(19);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Fatality_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Fatality_Frame()
		end
	elseif (GoH_DeathKnight.NumberRandom == 2) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Fatality1_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
         if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Fatality_Frame()
		end		 
		 
	elseif (GoH_DeathKnight.NumberRandom == 3) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Annihilated_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Annihilated_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 4) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Babality_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Babality_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 5) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Babality2_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Babality_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 6) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Excellent_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Excellent_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 7) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Excellent2_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Excellent_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 8) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Fabulous_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Fabulous_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 9) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Flawless_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_FlawlessVictory_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 10) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Flawless2_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_FlawlessVictory_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 11) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Flawless3_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_FlawlessVictory_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 12) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Impressive_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Impressive_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 13) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Outstanding_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Outstanding_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 14) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Supurb_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Superb_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 15) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Well_Done_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_WellDone_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 16) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\You_Win_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_You_Win_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 17) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Animality_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Animality_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 18) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Brutality_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Brutality_Frame()
		end

	elseif (GoH_DeathKnight.NumberRandom == 19) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\Wonderfull_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
		Show_Wonderful_Frame()
		end


	end

end




-- ONLY INSULTS
function Play_Only_Insults()

	GoH_DeathKnight.NumberRandom = math.random(6);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\You_Weak_Pathetic_Fool_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\You_Are_Nothing_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

			PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\You_Suck_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 4) then

		PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\That_Was_Pathetic_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 5) then

			PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\You_Suck2_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
			
	elseif (GoH_DeathKnight.NumberRandom == 6) then

			PlaySoundFile("Interface\\AddOns\\GoH\\Sounds\\You_Lose_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

            Show_You_Lose_Frame()			

	end

end

-- RANDOM DEATHGRIP SOUND
function Play_Random_DEATHGRIP_Sound()

		-- CALL RANDOM MATH GENERATOR
		-- See the number 4, that means you will need four sound files.
		-- If you want 7, change that number to 7. If you want less, change it to less.
		GoH_DeathKnight.NumberRandom = math.random(5);

		-- USE RANDOM MATH GENERATED RESULT
		if (GoH_DeathKnight.NumberRandom == 1) then
		
		

					if (GoH_DeathKnight.Gender == "Male") then
						GoH_DeathKnight.NumberRandom = math.random(2);
						if (GoH_DeathKnight.NumberRandom == 1) then
							-- play first sound (male) A
							PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Come_Here2_Male.mp3","Master");
							
						elseif (GoH_DeathKnight.NumberRandom == 2) then
							-- play first sound (male) B
							PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Come_Here_Male.mp3","Master");
						
							
						end
					else
						-- play first sound (female)
						PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Come_Here_Female.mp3","Master");
						
					end
					if GoHv5_DeathKnight_Data.config.Emote == "YES" then
					
					SendChatMessage("Come Here!", "EMOTE" );
					
					end
					
					if IsInInstance() then
					
					if GoHv5_DeathKnight_Data.config.Say == "YES" then
					
					SendChatMessage("Come Here!", "SAY" );
					
					end
					
					if GoHv5_DeathKnight_Data.config.Yell == "YES" then
					
					SendChatMessage("Come Here!", "YELL" );
					
					end
					
					end
					
					if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
					
					Show_GoH_Frame();
					
					end

		elseif (GoH_DeathKnight.NumberRandom == 2) then

					if (GoH_DeathKnight.Gender == "Male") then
						GoH_DeathKnight.NumberRandom = math.random(2);
						if (GoH_DeathKnight.NumberRandom == 1) then
							-- play second sound (male) A
							PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_Over_Here2_Male.mp3","Master");
						elseif (GoH_DeathKnight.NumberRandom == 2) then
							-- play second sound (male) B
							PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_Over_Here_Male.mp3","Master");
						end
					else
						-- play second sound (female)
						PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_Over_Here_Female.mp3","Master");
					end
					if GoHv5_DeathKnight_Data.config.Emote == "YES" then
					
					SendChatMessage("Get Over Here!", "EMOTE" );
					
					if IsInInstance() then
					
					end
					
					if GoHv5_DeathKnight_Data.config.Say == "YES" then
					
					SendChatMessage("Get Over Here!", "SAY" );
					
					end
					
					if GoHv5_DeathKnight_Data.config.Yell == "YES" then
					
					SendChatMessage("Get Over Here!", "YELL" );
					
					end
					
					end
					
					if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
					
					Show_GoH_Frame();
					
					end

		

		elseif (GoH_DeathKnight.NumberRandom == 3) then

			-- play fifth sound
  			
				PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Gotcha_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
			
			
			if GoHv5_DeathKnight_Data.config.Emote == "YES" then
			
			SendChatMessage("Gotcha!", "EMOTE" );
			
			end
			
			if IsInInstance() then
			
			if GoHv5_DeathKnight_Data.config.Say == "YES" then
			
			SendChatMessage("Gotcha!", "SAY" );
			
			end
			if GoHv5_DeathKnight_Data.config.Yell == "YES" then
			
			SendChatMessage("Gotcha!", "YELL" );
			
			end
			
			end
			
			if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
					
					Show_GoH_Frame();
					
					end
			
		elseif (GoH_DeathKnight.NumberRandom == 4) then
		
		    if GoHv5_DeathKnight_Data.config.Include_Headless_Horseman_Sound == "YES" then

			-- play 6 sound
  			
				if (GoH_DeathKnight.Gender == "Female") then
						PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_Over_Here_You_Idiot_Female.mp3","Master");
				else
						PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\You_Idiot.mp3","Master");
				end
				if GoHv5_DeathKnight_Data.config.Emote == "YES" then

				SendChatMessage("Get Over Here You Idiot!", "EMOTE" );
				
				end
				
				if IsInInstance() then
				
				if GoHv5_DeathKnight_Data.config.Say == "YES" then

				SendChatMessage("Get Over Here You Idiot!", "SAY" );
				
				end
				if GoHv5_DeathKnight_Data.config.Yell == "YES" then

				SendChatMessage("Get Over Here You Idiot!", "YELL" );
				
				end
				
				end
				
				if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
					
					Show_GoH_Frame();
					
					end
				
			
			else
					PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_Over_Here_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
					
					if GoHv5_DeathKnight_Data.config.Emote == "YES" then
					
					SendChatMessage("Get Over Here!", "EMOTE" );
					
					end
					
					if IsInInstance() then
					
					if GoHv5_DeathKnight_Data.config.Say == "YES" then
					
					SendChatMessage("Get Over Here!", "SAY" );
					
					end
					
					if GoHv5_DeathKnight_Data.config.Yell == "YES" then
					
					SendChatMessage("Get Over Here!", "YELL" );
					
					end
					
					end
					
					if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
					
					Show_GoH_Frame();
					
					end
				
					
            end
		elseif (GoH_DeathKnight.NumberRandom == 5) then
			
			       if GoHv5_DeathKnight_Data.config.Include_Rude_Sounds == "YES" then
			       GoH_DeathKnight.NumberRandom = math.random(2);
				   if (GoH_DeathKnight.NumberRandom == 1) then
			       PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_Over_Here_Bitch_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
			       elseif (GoH_DeathKnight.NumberRandom == 2) then
							-- play second sound (male) B
							PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_The_Fuck_Over_Here_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
						end	
				
				if GoHv5_DeathKnight_Data.config.Emote == "YES" then

				SendChatMessage("Get Over Here!", "EMOTE" );
				
				end
				
				if IsInInstance() then
				
				if GoHv5_DeathKnight_Data.config.Say == "YES" then

				SendChatMessage("Get Over Here!", "SAY" );
				
				end
				if GoHv5_DeathKnight_Data.config.Yell == "YES" then

				SendChatMessage("Get Over Here!", "YELL" );
				
				end
				
				end
				
				if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
					
					Show_GoH_Frame();
					
				end
				
			
			else
					PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_Over_Here_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
					
					if GoHv5_DeathKnight_Data.config.Emote == "YES" then
					
					SendChatMessage("Get Over Here!", "EMOTE" );
					
					end
					
					if IsInInstance() then
					
					if GoHv5_DeathKnight_Data.config.Say == "YES" then
					
					SendChatMessage("Get Over Here!", "SAY" );
					
					end
					
					if GoHv5_DeathKnight_Data.config.Yell == "YES" then
					
					SendChatMessage("Get Over Here!", "YELL" );
					
					end
					
					end
					
					if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
					
					Show_GoH_Frame();
					
					end
					
			
			    
		    end
			
	     	
			
			
		end	
		
		
	
    
end

function Play_Random_Interrupt()

     

    GoH_DeathKnight.NumberRandom = math.random(3);
	
	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

	
         PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Lack_Of_Faith_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 
		 
    elseif (GoH_DeathKnight.NumberRandom == 2) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Thats_Enough_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 
		  elseif (GoH_DeathKnight.NumberRandom == 3) then
	
	     PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Thats_Enough_1_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		 
	end
	
	if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
	 Show_Interrupted_Frame()
	 end
	 
	 if GoHv5_DeathKnight_Data.config.Interrupt_Emote == "YES" then

				SendChatMessage("INTERRUPTED!", "EMOTE" );
				
				end
				
				if IsInInstance() then
				
				if GoHv5_DeathKnight_Data.config.Interrupt_Say == "YES" then

				SendChatMessage("INTERRUPTED!", "SAY" );
				
				end
				if GoHv5_DeathKnight_Data.config.Interrupt_Yell == "YES" then

				SendChatMessage("INTERRUPTED!", "YELL" );
				
				end
				
				end

end

function Play_Toasty()

    GoH_DeathKnight.NumberRandom = math.random(1);
	
	if (GoH_DeathKnight.NumberRandom == 1) then
	
	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Toasty_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
    end
    if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
	Show_Toasty_Frame()
	end
end

function Play_Finish_it()

    GoH_DeathKnight.NumberRandom = math.random(1);
	
	if (GoH_DeathKnight.NumberRandom == 1) then
	
	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Finish_It_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
    end
    if GoHv5_DeathKnight_Data.config.On_Screen_Graphic == "YES" then
	Show_Finish_It_Frame();
	end
end

function Play_Random_Summon()           --( DEATH KNIGHT )

	GoH_DeathKnight.NumberRandom = math.random(5);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\ArmyoftheDead2_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\ArmyoftheDead_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
		
	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Fallen_Knight.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 4) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Its_Over_Now.mp3","Master");	
		
		
		
		elseif (GoH_DeathKnight.NumberRandom == 5) then
		
		if (GoH_DeathKnight.Gender == "Male") then
		
		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\ArmyoftheDead3.mp3","Master");
		
		
		else
		-- play second sound (female)
		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\ArmyoftheDead2_Female.mp3","Master");
		end

	    

	end

end

function Play_Random_Summon_2()

	GoH_DeathKnight.NumberRandom = math.random(2);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\ArmyoftheDead2_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\ArmyoftheDead_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	end

end


function Play_Random_Death_Pact_2()

	GoH_DeathKnight.NumberRandom = math.random(2);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then
	
	if (GoH_DeathKnight.Gender == "Male") then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Do_You_Bleed.mp3","Master");
    else

        PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Death_Pact_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
    end

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Death_Pact_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	end

end

function Play_Random_Laugh()

	GoH_DeathKnight.NumberRandom = math.random(5);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Laugh_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Laugh2_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Laugh3_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 4) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Laugh4_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 5) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Laugh5_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	end

end

function Play_Random_Cloak()

	GoH_DeathKnight.NumberRandom = math.random(8);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Camouflage.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Cloak_Engaged_" .. GoH_DeathKnight.Gender .. ".mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Bye_Bye.mp3","Master");
		
	elseif (GoH_DeathKnight.NumberRandom == 4) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Trek_Cloak_1.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 5) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Trek_Cloak_2.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 6) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Trek_Decloak_1.mp3","Master");	
		
	elseif (GoH_DeathKnight.NumberRandom == 7) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Trek_Decloak_2.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 8) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Cloak_Engage.mp3","Master");	

	end

end

function Play_Death_Gate()

    GoH_DeathKnight.NumberRandom = math.random(1);
	
	if (GoH_DeathKnight.NumberRandom == 1) then
	
	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Stargate.mp3","Master");
    end
	
	
end

function Play_Get_Under_Here()

    GoH_DeathKnight.NumberRandom = math.random(1);
	
	if (GoH_DeathKnight.NumberRandom == 1) then
	
	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Get_Under_Here_" .. GoH_DeathKnight.Gender .. ".mp3","Master");
    end
	if IsInInstance() then
    if (GoHv5_DeathKnight_Data.config.AntiMagic_Zone_Yell == "YES") then
	SendChatMessage("Get Under Here", "YELL" );
	end
	end
end

function Play_Random_Blade_Storm()

	GoH_DeathKnight.NumberRandom = math.random(4);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Blade_Storm_1.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Blade_Storm_2.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Blade_Storm_3.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 4) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Blade_Storm_4.mp3","Master");

	end

end

function Play_Random_Dance_Emote()

	GoH_DeathKnight.NumberRandom = math.random(3);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Dance_1.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Dance_2.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Dance_3.mp3","Master");

	

	end

end

function Play_Random_Beg_Emote()

	GoH_DeathKnight.NumberRandom = math.random(3);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Beg_1.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Beg_2.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Beg_3.mp3","Master");

	

	end

end

function Play_Random_Cower_Emote()

	GoH_DeathKnight.NumberRandom = math.random(3);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Cower_1.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Cower_2.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Cower_3.mp3","Master");

	

	end

end

function Play_Random_Silly_Emote()

	GoH_DeathKnight.NumberRandom = math.random(3);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Silly_1.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Silly_2.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Silly_3.mp3","Master");

	

	end

end

function Play_Random_Flirt_Emote()

	GoH_DeathKnight.NumberRandom = math.random(3);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Flirt_1.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Flirt_2.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Flirt_3.mp3","Master");

	

	end

end

function Play_Random_Insult_Emote()

	GoH_DeathKnight.NumberRandom = math.random(3);

	-- USE RANDOM MATH GENERATED RESULT
	if (GoH_DeathKnight.NumberRandom == 1) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Insult_1.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 2) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Insult_2.mp3","Master");

	elseif (GoH_DeathKnight.NumberRandom == 3) then

		PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Insult_3.mp3","Master");

	

	end

end