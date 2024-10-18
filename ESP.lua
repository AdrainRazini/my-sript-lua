-- Configurações
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Função para aplicar o efeito de brilho
local function applyGlow(character)
    -- Adiciona um Highlight se não existir
    if not character:FindFirstChildOfClass("Highlight") then
        local highlight = Instance.new("Highlight")
        highlight.Name = "Highlight"
        highlight.Parent = character
        highlight.Adornee = character
        highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Cor do brilho
        highlight.OutlineColor = Color3.fromRGB(255, 0, 0) -- Cor do contorno do brilho
        highlight.OutlineTransparency = 0.5 -- Transparência do contorno
    end
end

-- Função para fazer os jogadores aparecerem através das paredes
local function makeVisible(character)
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
            part.Material = Enum.Material.SmoothPlastic
            part.BrickColor = BrickColor.new("Bright red")
            part.Transparency = 0.5 -- Torna o jogador parcialmente transparente
        end
    end
end

-- Atualiza os efeitos para todos os jogadores
local function updatePlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            -- Adiciona efeitos a cada jogador
            local character = player.Character
            applyGlow(character)
            makeVisible(character)
        end
    end
end

-- Atualiza a cada frame
RunService.RenderStepped:Connect(updatePlayers)
