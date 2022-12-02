local frame = CreateFrame("FRAME")

frame:SetScript("OnEvent", function(self, event, arg1, ...)
        if event == "PARTY_INVITE_REQUEST" then
            AcceptGroup()
        elseif event == "GROUP_ROSTER_UPDATE" then
            StaticPopup_Hide("PARTY_INVITE")
        elseif event == "INCOMING_SUMMON_CHANGED" and arg1=="player" then
            C_SummonInfo.ConfirmSummon()
        end
    end
)

frame:RegisterEvent("PARTY_INVITE_REQUEST")
frame:RegisterEvent("GROUP_ROSTER_UPDATE")
frame:RegisterEvent("INCOMING_SUMMON_CHANGED")