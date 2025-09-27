aba_cadastro <- function() {
  tabPanel(
    title = "Dados Iniciais de Cadastro",
    value = "cadastro",
    conditionalPanel(
      condition = "input.iniciar > 0",
      div(
        labelObrigatorio("Data e hora do Cadastro"),
        textInput("data_manual", NULL, placeholder = "21/09/2025 13:01"),
        
        labelObrigatorio("Nome Completo da Assistida"),
        textInput("nome", NULL),
        
        labelObrigatorio("Número do CPF"),
        textInput("cpf", NULL, placeholder = "000.000.000-00"),
        
        tags$label(strong("Número do RG")),
        textInput("rg", NULL, placeholder = "00.000.000-0"),
        
        tags$label(strong("Upload do Documento")),
        fileInput("documento", NULL, accept = c(".pdf", ".jpg", ".png")),
        
        labelObrigatorio("(DDD) Telefone"),
        textInput("telefone", NULL, placeholder = "(99) 99999-9999"),
        
        labelObrigatorio("Tipo de Demanda"),
        selectInput("demanda", NULL, choices = c("Espontânea", "Encaminhada pela Rede Intersetorial", "Encaminhamento Interno da Rede SEMMU")),
        
        # Subseções dinâmicas
        conditionalPanel(
          condition = "input.demanda == 'Encaminhada pela Rede Intersetorial'",
          tags$hr(),
          selectInput("rede_intersetorial", 
                      tags$label(strong("Rede Intersetorial")),
                      choices = c("PARAPAZ", "CREAS", "CRAS", "UBS", "HGP", "UBS", "UPA", "Conselho Tutelar", "DEAM", "DEACA", "Ministério Público","SEHAB", "SEMAS", "SEMSI", "SEMED", "Outros")),
          textInput("obs_localidade", tags$label(strong("Observações de Localidade")), placeholder = "Ex: Bairro distante, zona rural, etc.")
        ),
        conditionalPanel(
          condition = "input.demanda == 'Encaminhamento Interno da Rede SEMMU'",
          tags$hr(),
          selectInput("rede_semmu", 
                      tags$label(strong("Rede SEMMU")), 
                      choices = c("CRM", "Casa de Mainha", "Casa Abrigo", "SEMMU Até Você", "SEMMU Sede", "Outros"))),
        
        actionButton("prev2", "Voltar", class = "btn-secondary"),
        actionButton("next2", "Próximo", class = "btn-primary")
      )
    )
  )
}