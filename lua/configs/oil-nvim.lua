return {
  default_file_explorer = true, -- gantikan netrw sepenuhnya
  columns = {
    "mtime",
    "icon",
  },
  buf_options = {
    buflisted = false,
    bufhidden = "hide",
  },
  win_options = {
    wrap = false,
    signcolumn = "no",
    cursorcolumn = false,
    foldcolumn = "0",
    spell = false,
    list = false,
    conceallevel = 3,
    concealcursor = "nvic",
  },
  delete_to_trash = true, -- hapus ke trash, bukan permanent
  skip_confirm_for_simple_edits = false,
  prompt_save_on_select_new_entry = true,
  use_default_keymaps = true,
  view_options = {
    show_hidden = false,
    is_hidden_file = function(name, _)
      return vim.startswith(name, ".")
    end,
    is_always_hidden = function(name, _)
      return name == ".git"
    end,
    natural_order = true,
    sort = {
      { "type", "asc" },
      { "name", "asc" },
    },
  },
}
