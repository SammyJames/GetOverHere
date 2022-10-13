

	-- TIMER SET UP (TO REDUCE SPAM)
	local GoHv5_Timer = {}
	_G.GoHv5_Timer = GoHv5_Timer
	local frame = _G.GoHv5_Timer_Frame
	local GoH_Timer_Time = 0;
	local GoH_Timer_Ticks_at = 102; --time to get to
	local GoH_elapsedTime = 1

function GoHv5_Timer:OnUpdate(GoH_elapsedTime)


	if GoHv5_DeathKnight_Data.config.GoH_Timer_Ready == "NO" then

		-- If I use GoH_elapsedTime in the next line instead of 1,
		-- WoW decides to be a bitch. So I just use 1.
        GoHv5_DeathKnight_Data.config.GoH_Timer_Time = GoHv5_DeathKnight_Data.config.GoH_Timer_Time + 1;
        -- print(GoHv5_DeathKnight_Data.config.GoH_Timer_Time);
        if(GoHv5_DeathKnight_Data.config.GoH_Timer_Time >= 102) then
            --Your timer just dinged, now do whatever you want.
            GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "YES";
            GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;
        end

	end

end

