server <- function(input, output, session) {
  output$painel_principal <- renderUI({
    if (is.null(input$iniciar) || input$iniciar == 0) {
      tabsetPanel(id = "abas", aba_inicio())
    } else {
      tabsetPanel(
        id = "abas",
        aba_rede(),
        aba_cadastro(),
        aba_notificacao(),
        aba_familia(),
        aba_residencia(),
        aba_renda(),
        aba_revisao(),
        aba_finalizado()
      )
    }
  })
  
  observeEvent(input$iniciar, {
    updateTabsetPanel(session, "abas", selected = "rede")
  })
}