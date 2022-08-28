local status_ok, peepsight = pcall(require, "peepsight")
if not status_ok then
	return
end


peepsight.setup({
	-- go
	"function_declaration",
	"method_declaration",
	"func_literal",

	-- typescript
	"arrow_function",
	"function_declaration",
	"generator_function_declaration"
})
