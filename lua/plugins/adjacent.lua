return {
  {
    "telescope.nvim",
    dependencies = {
      "MaximilianLloyd/adjacent.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("adjacent")
      end,
    },
  },
}
