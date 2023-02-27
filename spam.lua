print("Script Comission [Spajro]")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Chat Spam by Spajro", "GrapeTheme")
local Tab1 = Window:NewTab("Chat")
local Section1 = Tab1:NewSection("Spam Bot Settings")

Section1:NewTextBox("Wpisz tekst", "Naserio szukasz informacji o tym ?", function(txt)
	text = txt
	print(text)
end)

Section1:NewSlider("Timeout", "Dalej nie domyslasz sie", 60, 0, function(s)
    czas = s
    print(czas)
end)

Section:NewButton("Start Spamming", "Dalej nie domyslasz sie", function()
while true do
wait(czas)
local args = {
    [1] = text,
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end
end)
