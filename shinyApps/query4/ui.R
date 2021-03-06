ui<-fluidPage(
  # custom CSS for smaller font
  tags$head(
    tags$style(HTML("pre, table.table{font-size:smaller;}"))
  ),
  fluidRow(
    column(width = 4,
           # In a plotOutput, passing values for click, dblclick, hover, or brush will enable those interactions.
           plotOutput("plot1", height = 550, width = 1000,
                      # Equivalent to: click = clickOpts(id = "plot_click")
                      click = "plot_click",
                      #dblclick = dblclickOpts(id = "plot_dblclick"),
                      hover = hoverOpts(id = "plot_hover"),
                      brush = brushOpts(id = "plot_brush")
           )
    )
  ),
  
  fluidRow(
    column(width=2, wellPanel(
      radioButtons("plot_type","Plot Type", c("Total","Average"))
    )),
    column(width = 3, verbatimTextOutput("click_info")),
    #column(width = 3, verbatimTextOutput("dblclick_info")),
    column(width = 3, verbatimTextOutput("hover_info")),
    column(width = 3, verbatimTextOutput("brush_info"))
  )
)