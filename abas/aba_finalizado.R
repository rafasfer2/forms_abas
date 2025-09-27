aba_finalizado <- function() {
  tabPanel(
    title = "Finalizado",
    value = "finalizado",
    div(
      h3("✅ Cadastro concluído com sucesso!"),
      p("Você pode iniciar um novo preenchimento ou encerrar o atendimento."),
      actionButton("reiniciar", "Novo Cadastro", class = "btn-primary")
    )
  )
}