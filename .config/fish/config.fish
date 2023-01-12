if status is-interactive
    # Commands to run in interactive sessions can go here

	#alias
	alias backup='/usr/bin/git --git-dir=$HOME/Templates/Backup --work-tree=$HOME'
	alias doom="~/.emacs.d/bin/doom"
	
	#fish configs
	fish_vi_key_bindings
	set fish_greeting
	set PATH $HOME/.cargo/bin $PATH
	cat ~/.cache/wal/sequences

end
