Config = Config or {}

Config.MinimumLawmen = 0 -- number of lawmen on server to be able to deal
Config.LawmenJob = 'police' -- job name for the lawmen on your server

-- contraband list
Config.ContrabandList = {
    "moonshine",
}

-- contraband price
Config.ContrabandPrice = {
    ["moonshine"] = { min = 3, max = 7, },
}
