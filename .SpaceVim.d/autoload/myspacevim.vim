function! myspacevim#before() abort
    noremap <C-g> <esc>
    nnoremap Q :q!<CR>>
    nnoremap j gj
    nnoremap k gk
    set number
    set norelativenumber
    set guicursor=i-n-v-c:block-Cursor
    let $FZF_DEFAULT_COMMAND="fd --type f"
endfunction

function! myspacevim#after() abort
    iunmap <C-g>
endfunction
