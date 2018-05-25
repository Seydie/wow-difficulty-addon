local frame = CreateFrame("Frame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
local function eventHandler(self, event, ...)
local _,instanceType = GetInstanceInfo()
	if instanceType == "none" then
		print("Not in instance");

	elseif instanceType == "party" then
		print("Dungeon");
		StaticPopup_Show ("POPUP")

	elseif instanceType == "raid" then
		print("Raid");
	end
end

StaticPopupDialogs["POPUP"] = {
		  text = "Do you want to change the difficulty?",
		  button1 = "OK",
		  OnAccept = function()
		      print("Yo yo difficulty set!")
		  end,
		  timeout = 0,
		  whileDead = true,
		  hideOnEscape = true,
		  preferredIndex = 3,
}

frame:SetScript("OnEvent", eventHandler);