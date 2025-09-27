aba_notificacao <- function() {
  tabPanel(
    title = "Notificação Individual",
    value = "notificacao",
    conditionalPanel(
      condition = "input.iniciar > 0",
      div(
        textInput("nome_social", "Nome Social"),
        textInput("data_nascimento", "Data de Nascimento", placeholder = "21/09/1990"),
        selectInput(
          "naturalidade", 
          labelObrigatorio("Naturalidade (Código IBGE)"), 
          choices = c("Parauapebas (1505536)", "Canaã dos Carajás (1502152)", "Curionópolis (1502772)", "Eldorado dos Carajás (1502954)", "Marabá (1504208)", "Belém (1501402)", "Outros")),
        conditionalPanel(
          condition = "input.naturalidade == 'Outros'",
          textInput("naturalidade_outros", "Informe a naturalidade")
        ),
        selectInput("uf", "UF", choices = c("PA", "MA", "TO", "Outros")),
        conditionalPanel(
          condition = "input.uf == 'Outros'",
          textInput("uf_outros", "Informe a UF")
        ),
        numericInput("quantos_filhos", labelObrigatorio("Quantos filhos possui?"), value = NA, min = 0),
        selectInput("gestante", "Gestante", choices = c("Não", "1° Trimestre (1 a 3 meses)", "2° Trimestre (3 a 6 meses)","3° Trimestre (6 a 9 meses)", "Ignorado")),
        selectInput("raca_cor", "Raça/Cor", choices = c("Branca", "Preta", "Amarela", "Parda", "Indígena", "Ignorado")),
        selectInput(
          "escolaridade", "Escolaridade",
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
            "Ignorado"
          )
        )
      ),
      selectInput(
        "atividade_laboral", 
        "Atividade Laboral", 
        choices = c(
          "Cuidados do Lar não remunerado", "Autônoma Formal (MEI)", "Autônoma Informal", "Trabalho Formal (CLT)", "Desempregada", "Estudante", "Pensão/Aposentadoria", "Servidora Pública", "Outros")),
      conditionalPanel(
        condition = "input.atividade_laboral == 'Outros'",
        textInput("atividade_outros", "Informe a atividade laboral")
      ),
      selectInput("estado_civil", "Situação Conjugal / Estado Civil", choices = c("Solteira", "Casada", "Separada", "Viúva", "União estável")),
      selectInput(
        "deficiencia", "Deficiência / Transtorno", 
        choices = c("Auditiva", "Visual", "Intelectual", "Física", "Psicossocial", "Transtorno Mental", "Transtorno de Comportamento","Múltipla", "Não possui", "Outros")),
      conditionalPanel(
        condition = "input.deficiencia == 'Outros'",
        textInput("deficiencia_outros", "Informe a deficiência ou transtorno")
      ),
      selectInput("orientacao_sexual", "Orientação Sexual", choices = c("Heterossexual", "Homossexual", "Bissexual", "Outros")),
      selectInput("identidade_genero", "Identidade de Gênero", choices = c("Mulher cisgênero", "Mulher transgênero", "Travesti", "Não binária", "Prefere não informar", "Outros")),
      
      actionButton("prev3", "Voltar", class = "btn-secondary"),
      actionButton("next3", "Próximo", class = "btn-primary")
    )
  )
}