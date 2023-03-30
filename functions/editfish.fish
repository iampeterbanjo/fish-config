function editfish --wraps='$fish_config_path/config.fish' --description 'alias editfish $fish_config_path/config.fish'
  $fish_config_path/config.fish $argv; 
end
