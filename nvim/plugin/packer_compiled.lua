-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/neekon/.cache/nvim/packer_hererocks/2.1.1727870382/share/lua/5.1/?.lua;/Users/neekon/.cache/nvim/packer_hererocks/2.1.1727870382/share/lua/5.1/?/init.lua;/Users/neekon/.cache/nvim/packer_hererocks/2.1.1727870382/lib/luarocks/rocks-5.1/?.lua;/Users/neekon/.cache/nvim/packer_hererocks/2.1.1727870382/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/neekon/.cache/nvim/packer_hererocks/2.1.1727870382/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["csvview.nvim"] = {
    commands = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
    config = { "\27LJ\2\n÷\4\0\0\6\0\29\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\v\0005\4\b\0005\5\t\0=\5\n\4=\4\f\0035\4\r\0005\5\14\0=\5\n\4=\4\15\0035\4\16\0005\5\17\0=\5\n\4=\4\18\0035\4\19\0005\5\20\0=\5\n\4=\4\21\0035\4\22\0005\5\23\0=\5\n\4=\4\24\0035\4\25\0005\5\26\0=\5\n\4=\4\27\3=\3\28\2B\0\2\1K\0\1\0\fkeymaps\18jump_prev_row\1\3\0\0\6n\6v\1\2\1\0\14<S-Enter>\tmode\0\18jump_next_row\1\3\0\0\6n\6v\1\2\1\0\f<Enter>\tmode\0\24jump_prev_field_end\1\3\0\0\6n\6v\1\2\1\0\f<S-Tab>\tmode\0\24jump_next_field_end\1\3\0\0\6n\6v\1\2\1\0\n<Tab>\tmode\0\27textobject_field_outer\1\3\0\0\6o\6x\1\2\1\0\aaf\tmode\0\27textobject_field_inner\1\0\6\18jump_next_row\0\18jump_prev_row\0\24jump_prev_field_end\0\24jump_next_field_end\0\27textobject_field_outer\0\27textobject_field_inner\0\tmode\1\3\0\0\6o\6x\1\2\1\0\aif\tmode\0\vparser\1\0\2\fkeymaps\0\vparser\0\rcomments\1\0\1\rcomments\0\1\3\0\0\6#\a//\nsetup\fcsvview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/neekon/.local/share/nvim/site/pack/packer/opt/csvview.nvim",
    url = "https://github.com/hat0uma/csvview.nvim"
  },
  ["cyberdream.nvim"] = {
    loaded = true,
    path = "/Users/neekon/.local/share/nvim/site/pack/packer/start/cyberdream.nvim",
    url = "https://github.com/scottmckendry/cyberdream.nvim"
  },
  ["lualine.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/neekon/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÜ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\14highlight\0\21ensure_installed\0\1\4\0\0\blua\vpython\15javascript\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/neekon/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/neekon/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/neekon/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/Users/neekon/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/neekon/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÜ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\14highlight\0\21ensure_installed\0\1\4\0\0\blua\vpython\15javascript\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'CsvViewDisable', function(cmdargs)
          require('packer.load')({'csvview.nvim'}, { cmd = 'CsvViewDisable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'csvview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CsvViewDisable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CsvViewToggle', function(cmdargs)
          require('packer.load')({'csvview.nvim'}, { cmd = 'CsvViewToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'csvview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CsvViewToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CsvViewEnable', function(cmdargs)
          require('packer.load')({'csvview.nvim'}, { cmd = 'CsvViewEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'csvview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CsvViewEnable ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'lualine.nvim'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
