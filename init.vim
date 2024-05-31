set nu
set nowrap
set autoindent expandtab tabstop=2 shiftwidth=2
set relativenumber
set splitright splitbelow

" Color scheme
colorscheme rose-pine
hi Normal guibg=none
hi NormalNC guibg=none
hi LineNr guibg=none 
hi Folded guibg=none 
hi NonText guibg=none 
hi SpecialKey guibg=none 
hi VertSplit guibg=none 
hi SignColumn guibg=none 
hi EndOfBuffer guibg=none 
hi NvimTreeNormal guibg=none
hi NvimTreeNormalNC guibg=none

" Alias
cnoreabbrev vsp vsp
cnoreabbrev hsp sp

" Keymap
nnoremap <silent> K :call ShowDocumentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>" " Tab for autocomplete
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>of :Telescope oldfiles<cr>
nnoremap <leader>lg :Telescope live_grep<cr>
nnoremap <leader>cf :e ~/.config/nvim/init.vim<cr>
nnoremap <leader>nt :NvimTreeToggle<cr>
" 패널 이동을 ctrl + kjhl로
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Plugin
lua require('plugins')
lua require('config/lualine')
lua require('config/nvim-tree')
lua require('config/dashboard-nvim')

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
