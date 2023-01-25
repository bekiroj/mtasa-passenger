addEvent('enter.vehicle', true)
addEventHandler('enter.vehicle',root,function(veh)
 if veh then
  setPedEnterVehicle(localPlayer, veh, true)
 end
end)