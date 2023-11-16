return {
  n = {
    -- better search
    ["n"] = "nzzzv",
    ["N"] = "Nzzzv",

    -- better scroll
    ["<C-d>"] = "<C-d>zz",
    ["<C-u>"] = "<C-u>zz",

    -- paste over selected text without ynking it
    ["p"] = { '"_dP' },

    -- copy whole file
    ["<leader>y"] = '[["+y]]',

    -- copy relative path
    ["<leader>yrp"] = {
      function()
        local path = vim.fn.expand "%:."
        vim.fn.setreg("+", path)
        vim.notify('Copied "' .. path .. '" to the clipboard!')
      end,
    },

    -- fast saving/exiting
    ["<leader>w"] = ":write!<CR>",
    ["<leader>q"] = ":q!<CR>",

    -- telescope
    ["gD"] = "<CMD>Telescope lsp_references show_line=false<CR>",

    -- trouble
    ["<leader>tt"] = "<CMD> TroubleToggle<CR>",
    ["<leader>tw"] = "<CMD> TroubleToggle workspace_diagnostics<CR>",
    ["<leader>td"] = "<CMD> TroubleToggle document_diagnostics<CR>",
  },

  v = {
    -- better indent
    ["<"] = "<gv",
    [">"] = ">gv",

    -- move lines
    ["J"] = ":m '>+1<CR>gv=gv",
    ["K"] = ":m '<-2<CR>gv=gv",
  },

  i = {
    ["jk"] = "<ESC>",
  },
}
