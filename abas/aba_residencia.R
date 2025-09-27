aba_residencia <- function() {
  tabPanel(
    title = "Dados de Residência",
    value = "residencia",
    conditionalPanel(
      condition = "input.iniciar > 0",
      div(
        selectInput(
          "municipio_residencia", "Município de Residência (Código IBGE)", 
          choices = c(
            "Parauapebas (1505536)", "Canaã dos Carajás (1502152)", "Curionópolis (1502772)", "Eldorado dos Carajás (1502954)", "Marabá (1504208)", "Belém (1501402)", "Outros")),
        conditionalPanel(
          condition = "input.municipio_residencia == 'Outros'",
          textInput("municipio_outros", "Informe o município de residência")
        ),
        textInput("bairro", "Bairro"),
        textInput("logradouro", "Logradouro (Rua, Avenida, ...)"),
        textInput("numero", "Número"),
        textInput("quadra", "Quadra"),
        textInput("lote", "Lote"),
        textInput("complemento", "Complemento (apto., casa, ...)"),
        selectInput("zona", "Zona de residência", choices = c("", "Urbana", "Rural", "Periurbana", "Indígena", "Quilombola")),
        selectInput("condicao_moradia", "Condição de Moradia", choices = c("Casa própria", "Alugada", "Cedida", "Ocupação", "Abrigo", "Situação de rua", "Outros")),
        conditionalPanel(
          condition = "input.condicao_moradia == 'Outros'",
          textInput("condicao_moradia_outros", "Informe a condição de moradia")
        ),
        textInput("ubs_referencia", "UBS de Referência"),
        actionButton("prev5", "Voltar", class = "btn-secondary"),
        actionButton("next5", "Próximo", class = "btn-primary")
      )
    )
  )
}