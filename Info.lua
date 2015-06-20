
-- Info.lua

-- Implements the g_PluginInfo standard plugin description





g_PluginInfo = 
{
	Name = "GalExport",
	Date = "2015-06-20",
	Description = "This plugin allows admins to execute batches of console commands read from a file",

	ConsoleCommands =
	{
		["batchexec"] =
		{
			HelpString = "Executes console commands read from a file",
			Handler = HandleConsoleBatchExec,
			ParameterCombinations =
			{
				{
					Params = "filename",
					Help = "Executes the contents of the specified file as console commands",
				},
			},
		},
	},
}




