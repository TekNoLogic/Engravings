
local EDGEGAP, ROWHEIGHT, ROWGAP, GAP = 16, 19, 2, 4
local sources = Engravings
local db, dbpc
local initdb = Engravings.initdb
Engravings.initdb = nil

local frame = CreateFrame("Frame", nil, InterfaceOptionsFramePanelContainer)
frame.name = "Engravings"
frame:Hide()
frame:SetScript("OnShow", function(frame)
	if not db then db, dbpc = initdb() end
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
--~ 	subtitle:SetMaxLines(3)
	subtitle:SetText("This panel can be used to toggle tooltip engravings.")

	local rows, anchor = {}
	local function OnClick(self)
		local sv = self.value:match("^Wowhead score") and dbpc or db
		sv[self.value] = not sv[self.value]
	end
	for i=1,15 do
		local row = CreateFrame("Button", nil, frame)
		if not anchor then row:SetPoint("TOP", subtitle, "BOTTOM", 0, -16)
		else row:SetPoint("TOP", anchor, "BOTTOM", 0, -ROWGAP) end
		row:SetPoint("LEFT", EDGEGAP, 0)
		row:SetPoint("RIGHT", -EDGEGAP*2-8, 0)
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
		row.check = check


		local title = row:CreateFontString(nil, "BACKGROUND", "GameFontNormal")
		title:SetPoint("LEFT", check, "RIGHT", 4, 0)
		row.title = title
	end


	local scrollbar = LibStub("tekKonfig-Scroll").new(frame, nil, #rows/2)
	scrollbar:ClearAllPoints()
	scrollbar:SetPoint("TOP", rows[1], 0, -16)
	scrollbar:SetPoint("BOTTOM", rows[#rows], 0, 16)
	scrollbar:SetPoint("RIGHT", -16, 0)

	local f = scrollbar:GetScript("OnValueChanged")
	scrollbar:SetScript("OnValueChanged", function(self, value, ...)
		local offset = math.floor(value)
		for i,row in pairs(rows) do
			local title = sortedtitles[i + offset]
			row.check:SetChecked(not (db[title] or dbpc[title]))
			row.check.value = title
			row.title:SetText(title:gsub(":", ""))
		end
		return f(self, value, ...)
	end)

	scrollbar:SetMinMaxValues(0, math.max(0, #sortedtitles-#rows))
	scrollbar:SetValue(0)

	frame:EnableMouseWheel()
	frame:SetScript("OnMouseWheel", function(self, val) scrollbar:SetValue(scrollbar:GetValue() - val*#rows/2) end)
	frame:SetScript("OnShow", nil)
end)

InterfaceOptions_AddCategory(frame)


LibStub("tekKonfig-AboutPanel").new("Engravings", "Engravings")


----------------------------------------
--      Quicklaunch registration      --
----------------------------------------

local dataobj = LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject("Engravings", {
	type = "launcher",
	icon = "Interface\\Icons\\INV_Misc_StoneTablet_11",
	OnClick = function() InterfaceOptionsFrame_OpenToCategory(frame) end,
})

