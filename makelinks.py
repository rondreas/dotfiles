"""
NOTE: Requires Admin priviledges for Windows systems...

Script to create symbolic links for vimfiles, allowing user download dotfiles
to any location.

$ python ~/GitHub/dotfiles/makelinks.py
Symlink Created for: '/home/user/GitHub/dotfiles/vim/.vim' -> '/home/user/.vim'
Symlink Created for: '/home/user/GitHub/dotfiles/vim/.vimrc' -> '/home/user/.vimrc'
Symlink Created for: '/home/user/GitHub/dotfiles/vim/.gvimrc' -> '/home/user/.gvimrc'

"""

import os
import sys

# TODO Remove existing files if on windows. Can't create symlink otherwise.
# TODO On windows systems, rename .vim directory to vimfiles

def get_targets():
    """ Get paths for files in subfolder 'vim'. """

    # The path to current script
    base = os.path.dirname(sys.argv[0])

    # Join base with subfolder vim
    vim = os.path.join(base, 'vim')

    # Return all absolute filepaths for files inside vim folder
    return [os.path.abspath(os.path.join(vim, f)) for f in os.listdir(vim)]

def symlink():
    """ Create a symlink for each file in vimfolder at user home. """

    # Paths to each file in subfolder "vim"
    targets = get_targets()

    user_home = os.path.expanduser('~')
    
    for target in targets:

        file_name = os.path.split(target)[1]

        # Get paths for source and destination, replace dots with underscores for windows
        dst = os.path.abspath(os.path.join(user_home, file_name.replace(".", "_") if os.name == "nt" else file_name))
        src = os.path.abspath(target)

        try:
            # target_is_directory is ignored on systems other than windows. Required to symlink directories.
            os.symlink(src, dst, target_is_directory = True if os.path.isdir(target) else False)
            print(f"Symlink Created for: '{src}' -> '{dst}'")
        except Exception as e:
            print(f"Failed to create symlink: '{src}' -> '{dst}'")
            raise

if __name__ == "__main__":
    symlink()
