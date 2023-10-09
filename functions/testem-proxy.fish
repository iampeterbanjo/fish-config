function testem-proxy --wraps='browser-sync start --proxy localhost:7357 --xip --no-open --port 4000' --description 'alias testem-proxy browser-sync start --proxy localhost:7357 --xip --no-open --port 4000'
  browser-sync start --proxy localhost:7357 --xip --no-open --port 4000 $argv; 
end
