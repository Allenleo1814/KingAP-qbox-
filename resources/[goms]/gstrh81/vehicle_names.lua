function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	AddTextEntry("gstrh81", "Elegy RH8 CTX")
	AddTextEntry("gstrh81b", "Elegy RH8 CTX SLD")
end)
