return {
  {
    "rgroli/other.nvim",
    config = function()
      require("other-nvim").setup({
        -- VIEW COMPONENTS
        mappings = {
          {
            pattern = "/app/components/(.*)/(.*).html.erb",
            target = {
              { context = "view_component", target = "/app/components/%1/%2.yml" },
              { context = "view_component", target = "/app/components/%1/%2.rb" },
              { context = "view_component", target = "/app/components/%1.rb" },
            },
          },
          {
            pattern = "/app/components/(.*)/(.*).yml",
            target = {
              { context = "view_component", target = "/app/components/%1/%2.html.erb" },
              { context = "view_component", target = "/app/components/%1/%2.rb" },
              { context = "view_component", target = "/app/components/%1.rb" },
            },
          },
          {
            pattern = "/app/components/(.*)/(.*).rb",
            target = {
              { context = "view_component", target = "/app/components/%1/%2/%2.yml" },
              { context = "view_component", target = "/app/components/%1/%2/%2.html.erb" },
              { context = "view_component", target = "/app/components/%1/%2.html.erb" },
            },
          },
          -- END VIEW COMPONENTS
          "rails",
        },
      })
    end,
  },
}
