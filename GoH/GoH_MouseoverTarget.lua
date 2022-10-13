-- Simple Mouseover's Target
-- Author: Brodrick (aka Kirov)
-- Show's a second tooltip with information on that unit's target
-- Doesn't seem to be maintained any more, so integrated it into GoH
-- All credit for the original SMT addon to Brodrick.

SMouseTarget_Saved = { };

SMouseTarget_PosTable = {
	{ "BOTTOMRIGHT", "BOTTOMLEFT", nil, "lower left (default)" },
	{ "RIGHT", "LEFT", nil, "left" },
	{ "TOPRIGHT", "TOPLEFT", nil, "upper left" },
	{ "BOTTOMLEFT", "TOPLEFT", 10, "top left" },
	{ "BOTTOM", "TOP", 10, "top" },
	{ "BOTTOMRIGHT", "TOPRIGHT", 10, "top right" },
	{ "TOPLEFT", "TOPRIGHT", nil, "upper right" },
	{ "LEFT", "RIGHT", nil, "right" },
	{ "BOTTOMLEFT", "BOTTOMRIGHT", nil, "lower right" },
	{ "TOPRIGHT", "BOTTOMRIGHT", -10, "bottom right" },
	{ "TOP", "BOTTOM", -10, "bottom" },
	{ "TOPLEFT", "BOTTOMLEFT", -10, "bottom left" }
};

function SMouseTarget_OnLoad(self)
	
	self:RegisterEvent("PLAYER_ENTERING_WORLD");

end

function SMouseTarget_OnEvent(self)
	if ( SMouseTarget_Saved["off"] == nil ) then return; end

	SMouseTarget:Show();
	SMouseTarget_Pos();
	self:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function SMouseTarget_Console(msg)
	if ( strlower(strsub( msg, 1, 6 )) == "gohtip" ) then
		-- SMouseTarget_Saved["off"] = not SMouseTarget_Saved["off"];
		local state = "unknown";
		if ( SMouseTarget_Saved["off"] == 1 ) then
			SMouseTarget_Saved["off"] = nil;
			state = "off";
			SMouseTarget:Hide();
		else
			SMouseTarget_Saved["off"] = 1;
			state = "on";
			SMouseTarget:Show();
		end
		-- DEFAULT_CHAT_FRAME:AddMessage( "GoH: SimpleMouseTarget - turning "..state.." second tooltip" );
	end
end

function SMouseTarget_Pos( pos )
	if ( not pos ) then
		pos = (SMouseTarget_Saved["pos"] or 1);
	end

	SMouseTarget:ClearAllPoints();
	SMouseTarget:SetParent("GameTooltip");
	SMouseTarget:SetPoint( SMouseTarget_PosTable[pos][1], "GameTooltip", SMouseTarget_PosTable[pos][2], 0, (SMouseTarget_PosTable[pos][3] or 0) );
	SMouseTarget_Saved["pos"] = pos;
end

function SMouseTarget_OnUpdate(self)

if ( SMouseTarget_Saved["off"] == nil ) then
	SMouseTarget:Hide();
else
	local name, unit = GameTooltip:GetUnit()
	if unit and UnitExists(unit.."target") then
		unit = unit.."target"
		getglobal(self:GetName().."TextLeft1"):SetText(UnitName(unit));
		local r, g, b = GameTooltip_UnitColor(unit);
		getglobal(self:GetName().."TextLeft1"):SetTextColor(r, g, b);
		getglobal(self:GetName().."TextLeft1"):Show();
		local string;
		local level = UnitLevel(unit);
		local class = UnitClass(unit);
		local isplayer = UnitIsPlayer(unit);
		local dead = UnitIsDead(unit)
		local ghost = UnitIsGhost(unit);
		local type = UnitCreatureType(unit);
		local plus = UnitClassification(unit);
		if ( level > 0 ) then
			if ( plus and not plus == "rare" ) then
				string = "Lvl "..level.."+ ";
			else
				string = "Lvl "..level.." ";
			end
			if ( not dead and not ghost) then
				if ( isplayer ) then
					if ( class ) then
						string = string..class;
					end
					string = string.." (Player)";
				else
					if ( type ) then
						string = string.."("..type..")";
					else
						string = string.." (NPC)";
					end
				end
			end
		else
			if ( plus == "worldboss" ) then
				string = "BOSS ";
			else
				string = "?? ";
			end
			if ( type ) then
				string = string.."("..type..")";
			else
				string = string.."(?)";
			end
		end

		if ( ghost ) then
			string = string.."(Ghost)";
		elseif ( dead ) then
			string = string.."(Dead)";
		end

		if ( string ) then
			getglobal(self:GetName().."TextLeft2"):SetText(string);
			getglobal(self:GetName().."TextLeft2"):Show();
		else
			getglobal(self:GetName().."TextLeft2"):Hide();
		end

		local width = getglobal(self:GetName().."TextLeft1"):GetWidth();
		local width2 = getglobal(self:GetName().."TextLeft2"):GetWidth();
		if ( width2 > width ) then
			width = width2;
		end
		self:SetWidth(width+20)

		getglobal(self:GetName().."StatusBar"):SetMinMaxValues(0, UnitHealthMax(unit));
		getglobal(self:GetName().."StatusBar"):SetValue(UnitHealth(unit));
		if ( not SMouseTarget_Saved["nowarn"] and UnitIsUnit( unit, "player" ) ) then
			
		elseif ( not SMouseTarget_Saved["noconfirm"] and UnitIsUnit( unit, "target" ) ) then
			
		else
			
		end
		--self:SetAlpha(GameTooltip:GetAlpha())
		self:SetAlpha(1)
	else
		self:SetAlpha(0)
	end
	SMouseTarget:Show();
end
end