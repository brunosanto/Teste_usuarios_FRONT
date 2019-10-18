class Usuario <SitePrism::Page

    element :nome, "input[id='user_name']"
    element :ultimo_nome, "input[id='user_lastname']"
    element :email, "input[id='user_email']"
    element :endereco, "input[id='user_address']"
    element :universidade, "input[id='user_university']"
    element :profissao, "input[id='user_profile']"
    element :genero, "input[id='user_gender']"
    element :idade, "input[id='user_age']"
    element :botao_criar, "input[name='commit']"
    element :mensagem_sucesso, "p[id='notice']"

    
    def preencher_dados_usuario
        self.nome.set FFaker::NameBR.first_name
        self.ultimo_nome.set FFaker::NameBR.last_name
        self.email.set FFaker::Internet.email
        self.endereco.set Faker::Address.street_name
        self.universidade.set Faker::University.name
        self.profissao.set Faker::Job.position
        self.genero.set Faker::Gender.binary_type
        self.idade.set rand(18..90)
    end
end