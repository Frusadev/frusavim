vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd("CdProject")
    end
  end,
})

vim.api.nvim_create_autocmd("DirChanged", {
  callback = function()
    local venv_path = vim.fn.getcwd() .. "/.venv"
    if vim.fn.isdirectory(venv_path) == 1 and vim.fn.executable(venv_path .. "/bin/python") == 1 then
      local shell = vim.o.shell
      if shell:match("fish") then
        vim.cmd("silent !source " .. venv_path .. "/bin/activate.fish")
      else
        vim.cmd("silent !source " .. venv_path .. "/bin/activate.bash")
      end
    end
  end,
})
