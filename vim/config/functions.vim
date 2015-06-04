" Get current directory:
function! CurDir()
  let home = $HOME . '/'
  let curdir = substitute(getcwd(), home, "~/", "g")
  return curdir
endfunction

" Rewraper.
python << EOF

import textwrap
import re

def clean(level):
    return level.replace('+', ' ').replace('-', ' ').replace('*', ' ')

def rewrap(lines):
    blocks = []
    level = None
    block = []
    for line in lines:
        match = re.match(r'^((>+ )+)(.*)$', line)
        if match is None:
            match = re.match(r'^([ ]*([+\-*])?[ ]*)(.*)$', line)
        if match is None:
            matched_level = ''
            matched_text = line
        else:
            matched_level, t, matched_text = match.groups()
        if level is None:
            level = matched_level
        elif '>' in matched_level and level != matched_level:
            blocks.append((level, ' '.join(block)))
            block = []
            level = matched_level
        elif matched_level != clean(level):
            blocks.append((level, ' '.join(block)))
            block = []
            level = matched_level
        block.append(matched_text)
    blocks.append((level, ' '.join(block)))

    lines = []
    for level, text in blocks:
        for i, line in enumerate(
                textwrap.wrap(
                    text,
                    width=(72 - len(level)),
                    break_long_words=False,
                    break_on_hyphens=False)):
            if ('+' in level or '-' in level or '*' in level) and i > 0:
                lines.append(clean(level) + line)
            else:
                lines.append(level + line)
    return lines

EOF

function! ReWrap() range
python << EOF

import vim
from vim import current

start = int(vim.eval('a:firstline')) - 1
end = int(vim.eval('a:lastline'))
buf = current.buffer


lines = []
for i in range(start, end):
    lines.append(current.buffer[i])
lines = rewrap(lines)

buf[start:end] = lines

EOF
endfunction

vmap <C-w> :call ReWrap()<cr>
