function ai-summarise
    curl $argv[1] 2>/dev/null | mods -f "please summarize this web page for a human." | glow
end
