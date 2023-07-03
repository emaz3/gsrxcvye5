local letters = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}

local function sendRandomLetter()
    local randomIndex = math.random(1, #letters)
    local randomLetter = letters[randomIndex]

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(randomLetter, "All")
end

local function scheduleChatMessage()
    while true do
        wait(300)

        sendRandomLetter()
    end
end

spawn(scheduleChatMessage)
