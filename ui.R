ui <- fluidPage(
  head_includes,
  useShinyjs(),
  theme = bs_theme(version = 5, bootswatch = "flatly"),
  
  tags$div(
    style = "display: flex; flex-direction: column; min-height: 100vh;",
    
    cabecalho_global(),
    
    div(
      class = "main-container",
      style = "flex: 1; padding-bottom: 80px;",
      uiOutput("painel_principal")
    ),
    
    rodape_global()
  )
)