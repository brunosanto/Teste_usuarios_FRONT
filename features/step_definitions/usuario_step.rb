Dado("que tenha acessado o site {string}") do |site|
    visit site
  end
  
  Quando("preencher os dados do usuario") do
    @usuario = Usuario.new
    @usuario.preencher_dados_usuario
  end
  
  Quando("clicar no botão criar") do
    @usuario.botao_criar.click
  end
  
  Entao("é apresentado a mensagem {string}") do |mensagem|
    expect(@usuario.mensagem_sucesso).to have_content mensagem   
  end