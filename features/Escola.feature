Feature: Escola
  As an Diretor do sistema de comunicacao
  I want to cadastrar, ver, atualizar e remover uma Escola
  So that eu nao tenha que fazer isto manualmente

  Scenario: Cadastrar uma Escola corretamente
    Given Eu estou na pagina de cadastro de uma nova escola
    When Eu cadastro uma escola com o nome "Escola1" e com cpf do diretor "12345678910"
    Then Eu vejo que a escola com o nome "Escola1" foi cadastrada corretamente

  Scenario: Visualizar uma Escola
    Given Eu estou na pagina de listagem de escolas
    When Eu clico para visualizar a escola de nome "Escola1"
    Then Eu visualizo a escola de nome "Escola1"

  Scenario: Tentar cadastrar uma Escola com todos os campos em branco
    Given Eu estou na pagina de cadastro de uma nova escola
    When Eu faco o cadastro de uma escola com o nome "" e cpf do diretor ""
    Then Eu vejo '5' mensagens de erro

  Scenario: Atualizar o nome de uma escola corretamente
    Given Eu estou na pagina de listagem de escolas
    And Eu clico para editar a escola de nome "Escola1"
    When Eu insiro o novo nome "EscolaAtt1" e clico para atualizar a escola
    Then Eu vejo que o nome da escola foi atualizado corretamente para "EscolaAtt1"

  Scenario: Apagar uma escola
    Given Eu estou na pagina de listagem de escolas
    When Eu clico para apagar a escola de nome "EscolaAtt1"
    Then Eu confirmo a acao e vejo que a escola de nome "EscolaAtt1" foi apagada
