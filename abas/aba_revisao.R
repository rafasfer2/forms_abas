aba_revisao <- function() {
  tabPanel(
    title = "Revisão Final",
    value = "revisao",
    conditionalPanel(
      condition = "input.iniciar > 0",
      div(
        h3("📋 Revisão dos Dados Preenchidos"),
        uiOutput("resumo_dados"),
        br(),
        actionButton("prev_revisao", "Voltar", class = "btn-secondary"),
        actionButton("confirmar_envio", "Confirmar e Enviar", class = "btn-success")
      )
    )
  )
}