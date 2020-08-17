colorscheme darkokai

# highlighters
add-highlighter global/ show-matching
add-highlighter global/ number-lines -hlcursor -separator '  '
add-highlighter global/ regex '[ \t]+$' 0:red,red

# options
set-option global incsearch true
set-option global tabstop 2
set-option global indentwidth 2
set-option global scrolloff 10,10
set-option global autoreload true
set-option global grepcmd 'rg --column -with-filename --smart-case'

hook global InsertCompletionShow .* %{ map window insert <tab> <c-n>; map window insert <s-tab> <c-p> }
hook global InsertCompletionHide .* %{ unmap window insert <tab> <c-n>; unmap window insert <s-tab> <c-p> }
hook global InsertChar j %{ try %{
  exec -draft hH <a-k>jj<ret> d
  exec <esc>
}}

define-command comment %{ try comment-block catch comment-line }
define-command find -params 1 -shell-script-candidates 'fd --type file' 'edit %arg(1)'

map global normal ';' ':'
map global normal ':' ';'
map global normal <a-1> %{ :new iterm-terminal-horizontal<ret> }
map global normal <a-2> %{ :comment-line<ret> }
map global view i <esc><a-i> -docstring "<a-i>"
map global view a <esc><a-a> -docstring "<a-a>"

set global grepcmd 'rg --column'

define-command -docstring "vsplit [<commands>]: split tmux vertically" \
vsplit -params .. -command-completion %{
  tmux-terminal-horizontal kak -c %val{session} -e "%arg{@}"
}

# language server
evaluate-commands %sh{kak-lsp --kakoune --config ~/.config/kak-lsp/kak-lsp.toml -s $kak_session}

hook global WinSetOption filetype=(tsx|css|typescript|javascript) %{
  lsp-enable-window
  lsp-auto-hover-enable
  lsp-auto-hover-insert-mode-enable
  lsp-auto-hover-signature-help-enable
}

hook global WinSetOption filetype=javascript %{
  set window lintcmd "eslint"
  set window formatcmd "prettier --stdin --parser typescript"
  hook buffer BufWritePre .* %{format}
}

hook global WinSetOption filetype=css %{
  set window formatcmd "prettier --stdin"
  hook buffer BufWritePre .* %{format}
}

hook global WinSetOption filetype=typescript %{
  set window lintcmd "eslint"
  set window formatcmd "prettier --stdin --parser typescript"
  hook buffer BufWritePre .* %{format}
}

# plugins
source "%val{config}/plugins/plug.kak/rc/plug.kak"
plug "alexherbo2/auto-pairs.kak" %{
  hook global WinCreate .* %{
    auto-pairs-enable
  }
}
plug "lePerdu/kakboard" %{
  hook global WinCreate .* %{ kakboard-enable  }
}
plug "alexherbo2/move-line.kak"
map global normal "'" ': move-line-below %val{count}<ret>'
map global normal "<a-'>" ': move-line-above %val{count}<ret>'
plug "JJK96/kakoune-emmet"
map global insert <a-e> "<esc>x: emmet<ret>"
plug "ABuffSeagull/kakoune-vue"
