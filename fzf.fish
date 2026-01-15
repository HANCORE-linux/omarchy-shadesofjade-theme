set -l color00 '#00110b'
set -l color01 '#ff3370'
set -l color02 '#00a86b'
set -l color03 '#cceee1'
set -l color04 '#D1FFb0'
set -l color05 '#C3FCB8'
set -l color06 '#80d4b5'
set -l color07 '#e6f6f0'
set -l color08 '#87ae83'
set -l color09 '#ff3370'
set -l color0A '#00a86b'
set -l color0B '#D1FFb0'
set -l color0C '#006540'
set -l color0D '#C3FCB8'
set -l color0E '#80d4b5'
set -l color0F '#e6f6f0'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
