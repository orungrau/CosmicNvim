local mods = {
  'cosmic.compiled',
  'cosmic.core',
  'cosmic.theme',
}

for _, mod in ipairs(mods) do
  local ok, err = pcall(require, mod)
  if mod == 'cosmic.compiled' and not ok then
    vim.notify('Run :PackerCompile!', vim.log.levels.WARN, {
      title = 'CosmicNvim',
    })
  elseif not ok and not mod:find('cosmic.core.user') then
    error(('Error loading %s...\n\n%s'):format(mod, err))
  end
end

require('cosmic.plugins.toggleterm')
require('cosmic.plugins.lualine')
require('cosmic.plugins.formatter')
require('cosmic.plugins.barbar')
