aba_renda <- function() {
  tabPanel(
    title = "Descrição da Fonte de Renda",
    value = "renda",
    conditionalPanel(
      condition = "input.iniciar > 0",
      div(
        selectInput(
          "renda_media", "Renda Média Mensal",  
          choices = c(
            "Sem renda", 
            "Até 1/4 do salário mínimo", 
            "De 1/4 a 1/2 salário mínimo", 
            "De 1/2 a 1 salário mínimo", 
            "De 1 a 2 salários mínimos",  
            "De 2 a 3 Salários Mínimos", 
            "De 3 a 5 Salários Mínimos", 
            "Acima de 5 salários mínimos", 
            "Não informado")
        ),
        selectInput(
          "beneficio_social", "Benefício Social", 
          choices = c("Nenhum", "Bolsa Família", "BPC (Benefício de Prestação Continuada)", "Auxílio Brasil", "Auxílio Emergencial", "Auxílio Doença", "Outros")),
        conditionalPanel(
          condition = "input.beneficio_social == 'Outros'",
          textInput("beneficio_social_outros", "Informe o Benefício Social")
        ),
        numericInput("valor_beneficio", "Valor do Benefício Social (R$)", value = NA, min = 0),
        numericInput("valor_renda_propria", "Valor de Renda Própria (R$)", value = NA, min = 0),
        numericInput("valor_renda_pensao", "Valor de Renda Pensão (R$)", value = NA, min = 0),
        
        actionButton("prev6", "Voltar", class = "btn-secondary"),
        actionButton("enviar", "Enviar", class = "btn-success"),
        verbatimTextOutput("resposta")
      )
    )
  )
}