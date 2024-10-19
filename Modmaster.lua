local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))

-- Cria o ImageLabel
local imageLabel = Instance.new("ImageLabel", gui)
imageLabel.Size = UDim2.new(0, 100, 0, 100)
imageLabel.Position = UDim2.new(0.5, -50, 0.5, -50)
imageLabel.BackgroundTransparency = 1
imageLabel.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=1393562880&width=420&height=420&format=png"

-- Adiciona texto
local textLabel = Instance.new("TextLabel", gui)
textLabel.Size = UDim2.new(0, 400, 0, 50)
textLabel.Position = UDim2.new(0.5, -200, 0.5, 60)
textLabel.Text = "adrian75556435\nAdrainRazini"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true

-- Função para executar o script remoto
local function executarScript()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AdrainRazini/my-sript-lua/refs/heads/main/MODFERRAMENTASMENU"))()
end

-- Espera 5 segundos e então fecha o GUI
wait(5)
gui:Destroy()

-- Simula a saída da apresentação (substitua por seu evento real)
local apresentacaoSaiu = true  -- Simule que a apresentação saiu
if apresentacaoSaiu then
    executarScript()
end
