local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	{title="Poste de Police", colour=29, id=58, x=-445.202, y=6014.36, z=31.7164},
	{title="Poste de Police", colour=29, id=58, x=1854.21, y=3685.51, z=34.2671},
	{title="QG de Police", colour=29, id=60, x=436.811, y=-982.757, z=30.6986},
	{title="Hôpital", colour=2, id=61, x=1155.26, y=-1520.82, z=34.84},
	{title="Hôpital", colour=2, id=61, x=357.757, y=-597.202, z=28.6314},
	{title="Tequi-la-la", colour=1, id=93, x=-564.648, y=275.973, z=83.1117},
	{title="Bahama-mamas", colour=1, id=93, x=-1388.34, y=-586.318, z=30.2176},
	{title="Downtown Cab Co", colour=46, id=56, x=904.605,  y=-173.562, z=74.0773},
	{title="Gouvernement", colour=4, id=419, x=-427.996,  y=1114.98, z=326.768},
	{title="Farces et attrapes", colour=4, id=102, x=-1337.31,  y=-1278.39, z=4.86749},
	{title="Club", colour=34, id=121, x=128.900, y=-1283.211, z=29.273},
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
