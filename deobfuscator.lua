-- Deobfuscator for Cong PS' GUI

local function dbf(arg1, arg2)
	local table1 = {}
	for var = 1, #arg1 do
		table.insert(
			table1,
			string.char(
				bit32.bxor(
					string.byte(string.sub(arg1, var, var + 1)),
					string.byte(string.sub(arg2, 1 + ((var - 1) % #arg2), 1 + ((var - 1) % #arg2) + 1))
				) % 256
			)
		)
	end
	return table.concat(table1)
end

local tab = {
	-- insert function(s) that start with v7, replace with dbf or rename function to v7
}

local deobfuscated

local deobfuscate = function()
	for i,v in pairs(tab) do
		deobfuscated = {}
		table.insert(deobfuscated, v)
	end
	return deobfuscated
end

print(deobfuscate())