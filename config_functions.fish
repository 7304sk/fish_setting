function cleanjs
    npx terser --compress --mangle -- $argv
end
