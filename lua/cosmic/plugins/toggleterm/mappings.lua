local map = require('cosmic.utils').map

map('t', '<Esc>', [[<C-\><C-n>]])
map('t', '<C-o>', [[<C-\><C-n>]])
map('n', '<C-o>', ':ToggleTerm<CR>')
