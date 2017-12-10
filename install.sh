DOTFILES=$HOME/.dotfiles

overwrite=false
backup=false
overwrite_all=false
backup_all=false
skip_all=false

for linkable in $(find $DOTFILES -name "*.symlink"); do
	filename=$(basename $linkable .symlink)
	target="$HOME/.${filename}"
	if [[ -f $target || -h $target ]]; then
		if [[ $skip_all != true && $overwrite_all != true && $backup_all != true ]]; then
			echo "File already exists: ${target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
			read choice
			case "$choice" in 
			    o ) overwrite=true ;;
				b ) backup=true ;;
				O ) overwrite_all=true ;;
				B ) backup_all=true ;;
				S ) skip_all=true ;;
				s ) continue ;;
			esac
		fi	
		if [[ $overwrite == true || $overwrite_all == true ]]; then
			echo "Overwriting $target"
			rm -rf $target
		fi
		if [[ $backup == true || $backup_all == true ]]; then
			echo "Backing up $target"
			mv $target "$target.backup"
		fi
		if [[ $skip_all == true ]]; then
			echo "Skipping $target"
		else
			ln -vs $linkable "${target}"
		fi
	else
		ln -vs $linkable "${target}"
	fi
done