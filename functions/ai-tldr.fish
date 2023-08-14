function ai-tldr
    curl $argv[1] 2>/dev/null | mods -f TLDR | glow
end
