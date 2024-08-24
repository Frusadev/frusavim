return require("auto-save").setup {
  debounce_delay = 2000,
  execution_message = {
    message = function() -- message to print on save
      return ("File saved.")
    end,
    dim = 0.18, -- dim the color of `message`
    cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
  },
}
