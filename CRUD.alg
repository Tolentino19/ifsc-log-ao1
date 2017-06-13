algoritmo "CRUD"
// Função : Cadastro, Visualização, Atualização e Exclusão de dados dos Clientes.
// Autor : Bruno Tolentino de Souza
// Data : 2/6/2017
var
   menu,programa,rodar: logico
   comando: inteiro
   u,s,usuario,uemail,senha,senha_teste,confirma,incpf,innome: caractere
   cpf,nome,nasci,ender,bairro,estado,natural,fone,email: caractere
   
inicio
   escreval("Bem vindo ao CRUD!")
   menu <- verdadeiro
   enquanto menu = verdadeiro faca
   escreval("Digite:")
   escreval("- 1 para criar um usuário.")
   escreval("- 2 para efetuar login.")
   escreval("- Pressione ESC para sair.")
   escreva("Digite o comando desejado: ")
   leia(comando)
   escolha(comando)
   
   caso 1
   escreva("Digite seu nome de usuário: ")
   leia(usuario)
   escreva("Digite sua senha: ")
   leia(senha)
   escreval("Usuário cadastrado com sucesso.")
   escreval(" ")
   
   caso 2
   escreva("Usuário: ")
   leia(u)
   escreva("Senha: ")
   leia(s)
   se u+s = usuario+senha entao
   escreval("Logado com sucesso.")
   menu <- falso
   senao
   escreval("Usuário e/ou senha incorreto(s).")
   fimse
   
   outrocaso
   escreval("Essa opção não existe, tente novamente.")
   
   fimescolha
   fimenquanto
   
   programa <- verdadeiro
   enquanto programa = verdadeiro faca
   escreval("Digite:")
   escreval("- 1 para cadastrar um novo cliente;")
   escreval("- 2 para consultar um cliente existente;")
   escreval("- 3 para atualizar as informações de um cliente existente;")
   escreval("- 4 para excluir um cliente existente;")
   escreval("- 5 para sair.")
   escreva("Digite o comando desejado: ")
   leia(comando)
   escolha(comando)

   caso 1
   rodar <- verdadeiro
   enquanto rodar = verdadeiro faca
   escreva("Digite o CPF sem pontos e traços: ")
   leia(cpf)
   escreva("Digite o nome: ")
   leia(nome)
   escreva("Digite a data de nascimento(dd/mm/aaaa): ")
   leia(nasci)
   escreva("Digite a naturalidade: ")
   leia(natural)
   escreva("Digite o endereço: ")
   leia(ender)
   escreva("Digite o bairro: ")
   leia(bairro)
   escreva("Digite o estado: ")
   leia(estado)
   escreva("Digite o telefone: ")
   leia(fone)
   escreva("Digite o e-mail: ")
   leia(email)
   escreval("Favor confirmar o dados antes de salvá-los:")
   escreval(" ")
   escreval("CPF: ", cpf)
   escreval("Nome: ", nome)
   escreval("Data de nascimento: ", nasci)
   escreval("Naturalidade: ", natural)
   escreval("Endereço: ", ender)
   escreval("Bairro: ", bairro)
   escreval("Estado: ", estado)
   escreval("Telefone: ", fone)
   escreval("E-mail: ", email)
   escreval(" ")
   escreva("Confirma? s/n: ")
   leia(confirma)
   se confirma = "s" entao
   escreval("Cliente cadastrado com sucesso.")
   escreval(" ")
   rodar <- falso
   fimse
   fimenquanto

   caso 2
   rodar <- verdadeiro
   enquanto rodar = verdadeiro faca
   escreva("Digite o CPF sem pontos e traços: ")
   leia(incpf)
   se incpf = cpf entao
   escreval(" ")
   escreval("CPF: ", cpf)
   escreval("Nome: ", nome)
   escreval("Data de nascimento: ", nasci)
   escreval("Naturalidade: ", natural)
   escreval("Endereço: ", ender)
   escreval("Bairro: ", bairro)
   escreval("Estado: ", estado)
   escreval("Telefone: ", fone)
   escreval("E-mail: ", email)
   escreval(" ")
   rodar <- falso
   senao
   escreval("CPF não encontrado.")
   escreva("Tentar novamente? s/n: ")
   leia(confirma)
   se confirma = "n" entao
   rodar <- falso
   fimse
   fimse
   fimenquanto

   caso 3
   rodar <- verdadeiro
   enquanto rodar = verdadeiro faca
   escreva("Digite o nome: ")
   leia(innome)
   se innome = nome entao
   escreva("Digite o CPF sem pontos e traços: ")
   leia(cpf)
   escreva("Digite o nome: ")
   leia(nome)
   escreva("Digite a data de nascimento(dd/mm/aaaa): ")
   leia(nasci)
   escreva("Digite a naturalidade: ")
   leia(natural)
   escreva("Digite o endereço: ")
   leia(ender)
   escreva("Digite o bairro: ")
   leia(bairro)
   escreva("Digite o estado: ")
   leia(estado)
   escreva("Digite o telefone: ")
   leia(fone)
   escreva("Digite o e-mail: ")
   leia(email)
   escreval("Favor confirmar o dados antes de salvá-los:")
   escreval(" ")
   escreval("CPF: ", cpf)
   escreval("Nome: ", nome)
   escreval("Data de nascimento: ", nasci)
   escreval("Naturalidade: ", natural)
   escreval("Endereço: ", ender)
   escreval("Bairro: ", bairro)
   escreval("Estado: ", estado)
   escreval("Telefone: ", fone)
   escreval("E-mail: ", email)
   escreval(" ")
   escreva("Confirma? s/n: ")
   leia(confirma)
   se confirma = "s" entao
   escreval("Cliente atualizado com sucesso.")
   escreval(" ")
   rodar <- falso
   fimse
   fimenquanto

   caso 4
   escreva("Digite o CPF sem pontos e traços: ")
   leia(incpf)
   se incpf = cpf entao
   cpf <- ""
   nome <- ""
   nasci <- ""
   ender <- ""
   bairro <- ""
   estado <- ""
   natural <- ""
   fone <- ""
   email <- ""
   escreval("Cliente excluido com sucesso.")
   senao
   escreval("CPF não encontrado.")
   escreval(" ")
   fimse

   caso 5
   programa <- falso

   outrocaso
   escreval("Essa opção não existe, tente novamente.")

   fimescolha
   fimenquanto
   
fimalgoritmo
