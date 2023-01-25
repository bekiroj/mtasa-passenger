local timer = nil
addEventHandler('onVehicleStartEnter', getRootElement(), function(player, seat, jacked)
 if jacked ~= false then
  cancelEvent()
  if isTimer(timer) then
   killTimer(timer)
  end
  setTimer(function(thePlayer,theVehicle)
   timer = nil
   triggerClientEvent(thePlayer, 'enter.vehicle', thePlayer, theVehicle)
  end, 50, 1, player, source)
 end
end)