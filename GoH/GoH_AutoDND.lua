-- PRE-DEFINE A COUPLE OF VARIABLES USED LATER
AHDND_TEXT_MSG = GoHv5_DeathKnight_Data.config.AutoDND_Auction_House_Whisper_Message;
DND_TEXT_MSG = GoHv5_DeathKnight_Data.config.AutoDND_In_Combat_Whisper_Message;

-- If you open the Auction House do these things:
function GoH_DeathKnight.events.AUCTION_HOUSE_SHOW()
-- AUCTIONHOUSE DND MODE
  if GoHv5_DeathKnight_Data.config.AutoDND_Auction_House == "YES" then

	  -- IF YOU ARE NOT IN DND MODE
	  if not UnitIsDND("player") then

			-- CHECK TO SEE IF YOU WANT TO SET A MESSAGE OR NOT
  			if GoHv5_DeathKnight_Data.config.AutoDND_Auction_House_Send_Whisper_Reply == "YES" then
				AHDND_TEXT_MSG = GoHv5_DeathKnight_Data.config.AutoDND_Auction_House_Whisper_Message;
			else
				AHDND_TEXT_MSG = "";
			end

			-- QUEUE THE TIMER TO NOT SPAM YOUR UI ERROR FRAME
			if GoHv5_DeathKnight_Data.config.GoH_Timer_Ready == "YES" then

				-- SEND THE COMMAND TO SET THE MESSAGE AND DND MODE
				SendChatMessage(AHDND_TEXT_MSG, "DND")

				-- DISPLAY THE UI ERROR FRAME MESSAGE
				UIErrorsFrame:AddMessage("|cFF00AA00Auction House <DND> Mode activated!|r")

				-- RESET THE TIMER
            	GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;

			end
	  end
  end
end

-- If you close the Auction House do these things:
function GoH_DeathKnight.events.AUCTION_HOUSE_CLOSED()
  -- AUCTIONHOUSE DND MODE
  if GoHv5_DeathKnight_Data.config.AutoDND_Auction_House == "YES" then

	  -- IF YOU ARE IN DND MODE
	  if UnitIsDND("player") then

			-- QUEUE THE TIMER TO NOT SPAM YOUR UI ERROR FRAME
			if GoHv5_DeathKnight_Data.config.GoH_Timer_Ready == "YES" then

				-- SEND THE COMMAND TO SET THE MESSAGE AND DND MODE
				SendChatMessage("", "DND")

				-- DISPLAY THE UI ERROR FRAME MESSAGE
			   	UIErrorsFrame:AddMessage("|cFFFF0000Auction House <DND> Mode deactivated!|r")

				-- RESET THE TIMER
            	GoHv5_DeathKnight_Data.config.GoH_Timer_Ready = "NO"; GoHv5_DeathKnight_Data.config.GoH_Timer_Time = 0;

			end
	  end
  end
end

-- If you are in combat DND function
function GoH_DND_Combat_Mode_On()

	GoHv5_DeathKnight_Data.config.Unit_In_Combat = "YES";

	-- COMBAT DND MODE ON
	  if GoHv5_DeathKnight_Data.config.AutoDND_In_Combat == "YES" then

		-- IF YOU ARE NOT MARKED AS DND
		if not UnitIsDND("player") then

			-- CHECK TO SEE IF YOU WANT TO SET A MESSAGE OR NOT
  			if GoHv5_DeathKnight_Data.config.AutoDND_In_Combat_Send_Whisper_Reply == "YES" then
				DND_TEXT_MSG = GoHv5_DeathKnight_Data.config.AutoDND_In_Combat_Whisper_Message;
			else
				DND_TEXT_MSG = "";
			end

			-- SEND THE COMMAND TO SET THE MESSAGE AND DND MODE
			SendChatMessage(DND_TEXT_MSG, "DND")

			-- DISPLAY THE UI ERROR FRAME MESSAGE
			UIErrorsFrame:AddMessage("|cFFFFD000Marked as <DND>|r");

		end
	  end

end

-- If you are not in combat DND function
function GoH_DND_Combat_Mode_Off()

	GoHv5_DeathKnight_Data.config.Unit_In_Combat = "NO";

  -- COMBAT DND MODE OFF
  if GoHv5_DeathKnight_Data.config.AutoDND_In_Combat == "YES" then

 	if UnitIsDND("player") then

		-- SEND THE COMMAND TO SET THE MESSAGE AND DND MODE
		SendChatMessage("", "DND")

		-- DISPLAY THE UI ERROR FRAME MESSAGE
		UIErrorsFrame:AddMessage("|cFFFFD000No longer marked <DND>|r");

  	end
  end

end