Config = Config or {}

Config.MinimumLawmen = 1 -- number of lawmen on server to be able to deal

-- contraband list
Config.ContrabandList = {
    "moonshine",
}

-- contraband price
Config.ContrabandPrice = { -- set your contraband selling and scam prices
    ["moonshine"] = { min = 3, max = 7, scammin = 1, scammax = 3 },
}
