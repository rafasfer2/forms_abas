# Carrega todas as abas

source("head_includes.R", local = TRUE)
source("abas/aba_inicio.R", local = TRUE)
source("abas/aba_rede.R", local = TRUE)
source("abas/aba_cadastro.R", local = TRUE)
source("abas/aba_notificacao.R", local = TRUE)
source("abas/aba_familia.R", local = TRUE)
source("abas/aba_residencia.R", local = TRUE)
source("abas/aba_renda.R", local = TRUE)
source("abas/aba_revisao.R", local = TRUE)
source("abas/aba_finalizado.R", local = TRUE)

source("helpers/cabecalho.R", local = TRUE)
source("helpers/rodape.R", local = TRUE)

# Função auxiliar obrigatória
labelObrigatorio <- function(texto) {
  tags$label(tags$strong(texto), span("*", style = "color: red;"))
}

# Função para salvar dados no banco SQLite
