vim.api.nvim_create_user_command("MasonInstallAll", function()
  if opts.ensure_installed and #opts.ensure_installed > 0 then
    vim.cmd "Mason"
    local mr = require("mason-registry")

    mr.refresh(function()
      for _, tool in ipairs(opts.ensure_installed) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
    end)
  end
end, {})