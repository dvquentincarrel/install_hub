#!/bin/bash
mkdir -p ~/my_repos
cd ~/my_repos
echo "Select a project to install:"
select project in all feh_stuff leyaourt misc_cli_utils q_bashline shell_stuff vim_stuff; do
    if [ "$project" = all ]; then
        for e in feh_stuff leyaourt misc_cli_utils q_bashline shell_stuff vim_stuff; do
            git clone https://github.com/dvquentincarrel/$e.git
            cd $e
            ./install.sh
            cd ..
        done
    else
        git clone https://github.com/dvquentincarrel/$project.git
    fi
done

