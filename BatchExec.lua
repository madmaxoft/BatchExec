
-- BatchExec.lua

-- Implements the entire plugin logic





function HandleConsoleBatchExec(a_Split)
	-- Check params:
	if not(a_Split[2]) then
		return true, "Usage: batchexec <filename>"
	end
	
	-- Execute file:
	local pm = cPluginManager
	for line in io.lines(a_Split[2]) do
		local IsSuccess, Msg = pm:ExecuteConsoleCommand(line)
		if not(IsSuccess) then
			return true, "Failed to execute \"" .. line .. "\": " .. (Msg or "<unknown error>")
		end
		if (Msg) then
			LOG(Msg)
		end
	end
	return true, "File executed"
end





function Initialize(a_Plugin)
	-- Initialize commands:
	dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")
	RegisterPluginInfoConsoleCommands()
	
	return true
end




