aba_familia <- function() {
  tabPanel(
    title = "Dados Familiares", 
    value = "familia",
    conditionalPanel(
      condition = "input.iniciar > 0",
      div(
        fluidRow(
          column(4, textInput("nome_familiar", "Nome", placeholder = "Ex: Maria Silva")),
          column(4, radioButtons("parentesco", "Parentesco", choices = c("", "Filho(a)", "Cônjuge", "Irmão(ã)", "Avô(ó)", "Outro"))),
          column(4, radioButtons("sexo_familiar", "Sexo", choices = c("", "Masculino", "Feminino")))
        ),
        fluidRow(
          column(4, numericInput("idade_familiar", "Idade", value = NA, min = 0)),
          column(4, radioButtons("frequenta_escola", "Frequenta Escola?", choices = c("Sim", "Não"))),
          column(
            4, 
            selectInput(
              "escolaridade_familiar", 
              "Escolaridade", 
              choices = c(
                "Sem escolaridade",
                "Ensino Fundamental Incompleto",
                "Ensino Fundamental Completo",
                "Ensino Médio Incompleto",
                "Ensino Médio Completo",
                "Superior Incompleto",
                "Superior Completo",
                "Alfabetização para adultos",
                "Educação Especial",
                "Técnico/Cursos Livres",
                "Não se aplica",
                "Ignorado"))
          )
        ),
        
        fluidRow(
          column(4, radioButtons("reside_com", "Reside com a assistida?", choices = c("Sim", "Não"))),
          column(8, br(), actionButton("adicionar_membro", "➕ Adicionar Membro", class = "btn-success"))
        ),
        
        tags$hr(),
        
        h4("👨‍👩‍👧‍👦 Membros da Família Cadastrados"),
        DT::dataTableOutput("tabela_familia"),
        
        tags$hr(),
        
        fluidRow(
          column(6, actionButton("prev4", "⬅️ Voltar", class = "btn-secondary")),
          column(6, div(style = "text-align:right;", actionButton("next4", "Avançar ➡️", class = "btn-primary")))
        )
      )
    )
  )
}