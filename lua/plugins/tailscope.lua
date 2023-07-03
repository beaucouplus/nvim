return {
  {
    "telescope.nvim",
    dependencies = {
      "danielvolchek/tailiscope.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("tailiscope")
      end,
    },
  },
}
