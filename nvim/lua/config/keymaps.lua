-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Define the toggleCopilotChat function
function toggleCopilotChat()
  if vim.fn.exists("b:copilot_chat_open") and vim.b.copilot_chat_open then
    -- If CopilotChat is open, close it
    vim.cmd("CopilotChatClose")
    vim.b.copilot_chat_open = false
  else
    -- If CopilotChat is not open, open it
    vim.cmd("CopilotChatOpen")
    vim.b.copilot_chat_open = true
  end
end

-- Map the ctrl+c key combination to the toggleCopilotChat function
vim.api.nvim_set_keymap("n", "<C-c>", ":lua toggleCopilotChat()<CR>", { noremap = true, silent = true })
