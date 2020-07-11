function! LoadSnD()
    let plugins_vimrc = ["airline.vim", "ale.vim", "appearance.vim",
                \ "fzf.vim", "gitgutter.vim", "hotkey.vim",
                \ "NERD_commenter.vim", "nerdtree,vim",
                \ "setting.vim" ]
    let color_vimrc = "gruvbox.vim"
    let plugin_manager_vimrc = "vundle.vim"

    let vim_snd = $VIM_SND

    let path_plugin_manager_vimrc = join([vim_snd, 'init', plugin_manager_vimrc], '/')
    let path_color_vimrc = join([vim_snd, 'colors', color_vimrc], '/')

    exec "so " . path_plugin_manager_vimrc
    exec "so " . path_color_vimrc

    for plugin in plugins_vimrc
        let path_plugin_vimrc = join([vim_snd, 'plugin', plugin], '/')
        exec "so " . path_plugin_vimrc
    endfor
endfunction

call LoadSnD()

