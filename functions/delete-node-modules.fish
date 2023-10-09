function delete-node-modules --wraps=find\ .\ -name\ \"node_modules\"\ -type\ d\ -prune\ -print\ -exec\ rm\ -rf\ \"\{\}\"\ \\\; --description alias\ delete-node-modules\ find\ .\ -name\ \"node_modules\"\ -type\ d\ -prune\ -print\ -exec\ rm\ -rf\ \"\{\}\"\ \\\;
  find . -name "node_modules" -type d -prune -print -exec rm -rf "{}" \; $argv; 
end
