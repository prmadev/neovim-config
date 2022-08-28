local status_ok, nvim_dapvt = pcall(require, "nvim-dap-virtual-text")
if not status_ok then
	return
end

local status_ok_two, dap_go = pcall(require, "dap-go")
if not status_ok_two then
	return
end

local status_ok_three, dapui = pcall(require, "dapui")
if not status_ok_three then
	return
end

nvim_dapvt.setup()
dap_go.setup()
dapui.setup()
