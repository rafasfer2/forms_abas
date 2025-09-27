# head_includes.R

head_includes <- tags$head(
  # Máscaras de entrada
  tags$script(src = "https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"),
  tags$script(HTML("
    Shiny.addCustomMessageHandler('applyMasks', function(message) {
      $('#cpf').mask('000.000.000-00');
      $('#telefone').mask('(00) 00000-0000');
      $('#rg').mask('00.000.000-0');
      $('#cep').mask('00000-000');
      $('#data_manual').mask('00/00/0000 00:00');
      $('#data_nascimento').mask('00/00/0000');
    });
  ")),
  
  # Estilos globais
  tags$style(HTML("

    /* Variáveis de cor e fonte */
    :root {
      --cor-principal: #5c2a7a;
      --cor-secundaria: #d63384;
      --cor-destaque: #ffc107;
      --cor-clara: #f8f9fa;
      --cor-escura: #2c3e50;
      --cor-sucesso: #4CAF50;
      --cor-erro: #f44336;
      --fonte-principal: 'Segoe UI', sans-serif;
    }

    body {
      font-family: var(--fonte-principal);
      background-color: var(--cor-clara);
      margin: 0;
      padding: 0;
    }

    /* Cabeçalho */
    .cabecalho-global {
      background-color: var(--cor-principal);
      color: white;
      padding: 10px 20px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 20px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }

    .cabecalho-global img { height: 100px; }
    .cabecalho-global h3 { margin: 0; font-size: 24px; }
    .cabecalho-global p { margin: 0; font-size: 14px; }

    /* Rodapé */
    .rodape-global {
      background-color: var(--cor-clara);
      color: #000;
      text-align: center;
      padding: 15px;
      font-size: 14px;
      border-top: 1px solid #ccc;
    }

    /* Botões */
    .btn-primary {
      background-color: var(--cor-principal);
      border-color: var(--cor-principal);
    }

    .btn-primary:hover {
      background-color: var(--cor-secundaria);
      border-color: var(--cor-secundaria);
    }

    .form-control:focus {
      border-color: var(--cor-principal);
      box-shadow: 0 0 0 0.2rem rgba(92,42,122,0.25);
    }

    /* Abas */
    .nav-tabs > li > a {
      background-color: var(--cor-clara);
      color: var(--cor-principal);
      font-weight: bold;
      font-size: 18px;
      padding: 12px 20px;
      border-radius: 8px 8px 0 0;
      border: 1px solid transparent;
      margin-right: 6px;
      position: relative;
      transition: background-color 0.3s ease, color 0.3s ease;
    }

    .nav-tabs > li.active > a,
    .nav-tabs > li.active > a:focus,
    .nav-tabs > li.active > a:hover {
      background-color: var(--cor-secundaria) !important;
      color: #ffffff !important;
      border: 1px solid var(--cor-secundaria) !important;
      box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    }

    .nav-tabs > li.active > a::after {
      content: '';
      position: absolute;
      bottom: -1px;
      left: 0;
      width: 100%;
      height: 4px;
      background-color: var(--cor-destaque);
      border-radius: 0 0 4px 4px;
      animation: slideIn 0.4s ease forwards;
    }

    @keyframes slideIn {
      from { width: 0; }
      to { width: 100%; }
    }

    .nav-tabs > li.concluido > a {
      background-color: #e8f5e9 !important;
      color: #2e7d32 !important;
      border: 1px solid #c8e6c9 !important;
    }

    .nav-tabs > li.pendente > a {
      background-color: #ffebee !important;
      color: #c62828 !important;
      border: 1px solid #ffcdd2 !important;
    }

    /* Inputs customizados */
    .form-check-input:checked + .form-check-label {
      background-color: var(--cor-principal);
      color: white;
      font-weight: bold;
      padding: 6px 12px;
      border-radius: 5px;
      display: block;
      margin-bottom: 5px;
    }

    .form-check-label {
      display: block;
      padding: 6px 12px;
      margin-bottom: 5px;
      cursor: pointer;
      border-radius: 5px;
      transition: background-color 0.3s;
    }

    .form-check-label:hover {
      background-color: #e6e6e6;
    }

    /* Cartões de status */
    .status-card {
      display: flex;
      align-items: center;
      background-color: #f0f0f0;
      border-left: 5px solid #ccc;
      padding: 10px 15px;
      margin-bottom: 10px;
      border-radius: 4px;
      font-weight: bold;
      box-shadow: 0 1px 3px rgba(0,0,0,0.1);
    }

    .status-card.concluido {
      border-left-color: var(--cor-sucesso);
      background-color: #e8f5e9;
      color: #2e7d32;
    }

    .status-card.pendente {
      border-left-color: var(--cor-erro);
      background-color: #ffebee;
      color: #c62828;
    }

    /* Responsividade */
    @media (max-width: 768px) {
      .cabecalho-global {
        flex-direction: column;
        text-align: center;
      }

      .cabecalho-global img {
        margin-bottom: 10px;
      }
    }
  "))
)