function reloadfish --wraps='source $fish_config_path/config.fish' --description 'alias reloadfish source $fish_config_path/config.fish'
  source $fish_config_path/config.fish $argv; 
end
