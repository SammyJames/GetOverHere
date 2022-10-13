-- ################################################################################
-- ################################################################################
-- ################################################################################

-- elapsed = 1

-- GoH: LOW HEALTH / MANA WARNING

function GoH4_LowHealthWarning_Pulser_OnUpdate(self, elapsed)

	if (GoHv5_DeathKnight_Data.config.Use_Health_Warning) == "YES"  then
		local remaining_hp_percent = UnitHealth("player") / UnitHealthMax("player");
		GoH4_LowHealthWarning_Pulser_CheckStatus(GoH4_LowHealthWarning_Pulser_LowHealthFrame, remaining_hp_percent, GoHv5_DeathKnight_Data.config.Health_Percentage)
	end

	if (GoHv5_DeathKnight_Data.config.Use_Mana_Warning) == "YES" then
		local remaining_mp_percent = UnitPower("player", SPELL_POWER_MANA) / UnitPowerMax("player", SPELL_POWER_MANA);
		GoH4_LowHealthWarning_Pulser_CheckStatus(GoH4_LowHealthWarning_Pulser_OutOfControlFrame, remaining_mp_percent, GoHv5_DeathKnight_Data.config.Mana_Percentage)
	end
end

function GoH4_LowHealthWarning_Pulser_CheckStatus(frame, percent, trigger)

	if ( (not UnitIsDeadOrGhost("player")) and (not UnitOnTaxi("player")) and (percent <= trigger) ) then
		GoH4_LowHealthWarning_Pulser_StartPulsing(frame)
		return
	end

	GoH4_LowHealthWarning_Pulser_StopPulsing(frame)
end

function GoH4_LowHealthWarning_Pulser_StartPulsing(frame)

  	if (frame.pulsing == "in") then
		if (frame:GetAlpha() == 1) then
			GoH4_LowHealthWarning_Pulser_PulseOut(frame)
			if (GoH4_LowHealthWarning_Pulser_LowHealthFrame) then
			if (GoH4_LowHealthWarning_Pulser_OutOfControlFrame:GetAlpha() == 1) then
			  if (GoHv5_DeathKnight_Data.config.Use_Mana_Warning_Sound) == "YES" then
			    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Heartmonitor.mp3","Master");
			  end
			end
			if (GoH4_LowHealthWarning_Pulser_LowHealthFrame:GetAlpha() == 1) then
			   if (GoHv5_DeathKnight_Data.config.Use_Health_Warning_Sound) == "YES" then
			    	PlaySoundFile("Interface\\AddOns\\GoH_DeathKnight\\Sounds\\Heartbeat.mp3","Master");
			   end
			end
			end

		end
	elseif (frame.pulsing == "out") then
		if (frame:GetAlpha() == 0) then
			GoH4_LowHealthWarning_Pulser_PulseIn(frame)
		end
	else
		frame:SetAlpha(0)
		GoH4_LowHealthWarning_Pulser_PulseIn(frame)
	end

end

function GoH4_LowHealthWarning_Pulser_StopPulsing(frame)

	frame.pulsing = false
	UIFrameFadeIn(frame, 1, frame:GetAlpha(), 0)
end

function GoH4_LowHealthWarning_Pulser_PulseIn(frame)

	frame.pulsing = "in"
	UIFrameFadeIn(frame, 1, frame:GetAlpha(), 1)
end

function GoH4_LowHealthWarning_Pulser_PulseOut(frame)

	frame.pulsing = "out"
	UIFrameFadeIn(frame, 1, frame:GetAlpha(), 0)
end
