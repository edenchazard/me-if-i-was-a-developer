function alts --wraps='sudo update-alternatives --config ' --description 'alias alts=sudo update-alternatives --config '
  sudo update-alternatives --config  $argv
        
end
