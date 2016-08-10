
local myname, ns = ...


local EDGEGAP, ROWHEIGHT, ROWGAP, GAP = 16, 19, 2, 4
local sources = Engravings

if AddonLoader and AddonLoader.RemoveInterfaceOptions then AddonLoader:RemoveInterfaceOptions("Engravings") end

local frame = CreateFrame("Frame", nil, InterfaceOptionsFramePanelContainer)
frame.name = "Engravings"
frame:Hide()
frame:SetScript("OnShow", function(frame)
	local sortedtitles = {}
	for title,data in pairs(sources) do table.insert(sortedtitles, title) end
	table.sort(sortedtitles, function(a,b) return string.lower(a) < string.lower(b) end)


	local title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText("Engravings")


	local subtitle = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
--~ 	subtitle:SetHeight(32)
	subtitle:SetHeight(35)
	subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
	subtitle:SetPoint("RIGHT", frame, -32, 0)
	subtitle:SetNonSpaceWrap(true)
	subtitle:SetJustifyH("LEFT")
	subtitle:SetJustifyV("TOP")
 	subtitle:SetMaxLines(3)
	subtitle:SetText("This panel can be used to toggle tooltip engravings.")

	local rows, anchor = {}
	local function OnClick(self)
		local sv = self.value:match("^Wowhead score") and ns.dbpc or ns.db
		sv[self.value] = not sv[self.value]
	end
	local HALFWAY = math.ceil(#sortedtitles/2.0) + 1
	for i,sourcetitle in ipairs(sortedtitles) do
		local row = CreateFrame("Button", nil, frame)
		if not anchor or i == HALFWAY then row:SetPoint("TOP", subtitle, "BOTTOM", 0, -8)
		else row:SetPoint("TOP", anchor, "BOTTOM", 0, -ROWGAP) end
		if i < HALFWAY then
			row:SetPoint("LEFT", EDGEGAP, 0)
			row:SetPoint("RIGHT", frame, "CENTER")
		else
			row:SetPoint("LEFT", frame, "CENTER", 4, 0)
			row:SetPoint("RIGHT", -EDGEGAP*2-8, 0)
		end
		row:SetHeight(ROWHEIGHT)
		anchor = row
		rows[i] = row


		local check = CreateFrame("CheckButton", nil, row)
		check:SetWidth(ROWHEIGHT+4)
		check:SetHeight(ROWHEIGHT+4)
		check:SetPoint("LEFT")
		check:SetNormalTexture("Interface\\Buttons\\UI-CheckBox-Up")
		check:SetPushedTexture("Interface\\Buttons\\UI-CheckBox-Down")
		check:SetHighlightTexture("Interface\\Buttons\\UI-CheckBox-Highlight")
		check:SetDisabledCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check-Disabled")
		check:SetCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check")
		check:SetScript("OnClick", OnClick)
		check:SetChecked(not (ns.db[sourcetitle] or ns.dbpc[sourcetitle]))
		check.value = sourcetitle


		local title = row:CreateFontString(nil, "BACKGROUND", "GameFontHighlight")
		title:SetPoint("LEFT", check, "RIGHT", 4, 0)
		title:SetText(sourcetitle:gsub(":", ""))
	end

	frame:SetScript("OnShow", nil)
end)

InterfaceOptions_AddCategory(frame)


----------------------------------------
--      Quicklaunch registration      --
----------------------------------------

local dataobj = LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject("Engravings", {
	type = "launcher",
	icon = "Interface\\Icons\\INV_Misc_StoneTablet_11",
	OnClick = function() InterfaceOptionsFrame_OpenToCategory(frame) end,
})
