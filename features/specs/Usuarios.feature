# encoding: utf-8
# language: pt

@testes
Funcionalidade: Cadastrar Usuarios

Cenario: Cadastrar usuario no site
    Dado que tenha acessado o site "http://automacaocombatista.herokuapp.com/users/new"
    Quando preencher os dados do usuario
    E clicar no botão criar
    Entao é apresentado a mensagem "Usuário Criado com sucesso"


  