require("chatgpt").setup({
  -- this config assumes you have OPENAI_API_KEY environment variable set
  openai_params = {
    model = "gpt-4o-mini",
    frequency_penalty = 0,
    presence_penalty = 0,
    max_tokens = 4095,
    temperature = 0.2,
    top_p = 0.1,
    n = 1,
  },
})
