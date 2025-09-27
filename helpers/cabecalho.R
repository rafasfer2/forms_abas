cabecalho_global <- function() {
  div(
    class = "cabecalho-global",
    div(img(src = "SEMMU-BRANCO.png", class = "logo-semmu")),
    div(
      h3(tags$strong("Formulário de Cadastro Inicial"), style = "margin: 0;"),
      p("SIAM - Sistema Integrado de Atendimento à Mulher", style = "margin: 0; font-size: 14px;"),
      style = "text-align: right;"
    )
  )
}