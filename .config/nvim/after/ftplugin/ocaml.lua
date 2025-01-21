local set = vim.opt_local
local vpi = vim.api

vim.keymap.set('n', '<Space>E', function()
  local str = vpi.nvim_get_current_line()
  local wins = vpi.nvim_list_wins()
  local wstring = {str .. ";; "}
  for i,w in pairs(wins) do
    local wbuf = vpi.nvim_win_get_buf(w)
    local nbuf = vpi.nvim_buf_get_name(wbuf)
    if string.match(nbuf, "term") then
      vpi.nvim_set_current_win(w)
      vpi.nvim_set_current_buf(wbuf)
      vpi.nvim_set_option_value("modifiable", true, {})
      vpi.nvim_input("i")
      vpi.nvim_put(wstring, "c", true, true)
      vpi.nvim_input("<CR>")
      vpi.nvim_input("<Esc><c-w><c-p>")
      return
    end
  end
    vpi.nvim_echo({ {'Error : no open terminal to send line\n'} }, true, { 'err' })
end)

