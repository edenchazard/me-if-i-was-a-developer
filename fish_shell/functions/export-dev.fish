function export-dev
    # Clean up
    rm -rf ./fish_shell/functions

    # Export
    cp /mnt/c/Users/neonf/AppData/Roaming/Code/User/settings.json ./vs_code
    cp -r $__fish_config_dir/functions ./fish_shell
    cp -r $__fish_config_dir/config.fish ./fish_shell
    powershell.exe -WindowStyle Hidden -NonInteractive -Command "code --list-extensions" | xargs -L 1 echo code --install-extension > vs_code/extensions
end
