vim.cmd 'let g:vimspector_install_gadgets = [ "vscode-go" ]'

vim.cmd 'let g:vimspector_enable_mappings = "HUMAN"'

-- local function vimspector_customise_ui()
--     vim.fn.win_gotoid(vim.g.vimspector_session_windows.code)
-- end

-- vim.api.nvim_create_autocmd('User', {
--     command = "VimspectorUICreated lua vimspector_customise_ui()"
-- })
--
-- vim.cmd([[
-- func! CustomiseUI()
--   call win_gotoid( g:vimspector_session_windows.code )
--   " Clear the existing WinBar created by Vimspector
--   "nunmenu WinBar
--   " Create our own WinBar
--   "nnoremap <S-n> :call vimspector#Continue()<CR>
--   "nnoremenu WinBar.Kill :call vimspector#Stop( { 'interactive': v:true } )<CR>
--   "nnoremenu WinBar.Continue :call vimspector#Continue()<CR>
--   "nnoremenu WinBar.Pause :call vimspector#Pause()<CR>
--   "nnoremenu WinBar.Step\ Over  :call vimspector#StepOver()<CR>
--   "nnoremenu WinBar.Step\ In :call vimspector#StepInto()<CR>
--   "nnoremenu WinBar.Step\ Out :call vimspector#StepOut()<CR>
--   "nnoremenu WinBar.Restart :call vimspector#Restart()<CR>
--   "nnoremenu WinBar.Exit :call vimspector#Reset()<CR>
-- endfunction

-- augroup MyVimspectorUICustomistaion
--   autocmd!
--   autocmd User VimspectorUICreated call s:CustomiseUI()
-- augroup END

-- ]])


