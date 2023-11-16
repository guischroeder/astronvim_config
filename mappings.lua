return {
  n = {
    -- better search
    ["n"] = "nzzzv",
    ["N"] = "Nzzzv",

    -- better scroll
    ["<C-d>"] = "<C-d>zz",
    ["<C-u>"] = "<C-u>zz",

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

    -- delete current buffer
    ["<leader>bd"] = ":bd<CR>",

    -- telescope
    ["gD"] = "<CMD>Telescope lsp_references show_line=false<CR>",

    -- trouble
    ["<leader>xt"] = "<CMD> TroubleToggle<CR>",
    ["<leader>xw"] = "<CMD> TroubleToggle workspace_diagnostics<CR>",
    ["<leader>xd"] = "<CMD> TroubleToggle document_diagnostics<CR>",
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
