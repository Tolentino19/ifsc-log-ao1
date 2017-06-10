algoritmo "CRUD"
// Função : Cadastro, Visualização, Atualização e Exclusão de dados dos Clientes.
// Autor : Bruno Tolentino de Souza
// Data : 2/6/2017
var
   rodar_programa, rodar: logico
   comando,incpf,cpf,innome,nome,nasci,ender,bairro,estado,natural,fone,email: caractere
   
inicio
   escreval("Bem vindo ao CRUD!")
   
   rodar_programa <- verdadeiro
   enquanto rodar_programa = verdadeiro faca
   escreval("Digite:")
   escreval("- 'cadastrar' para cadastrar um novo cliente;")
   escreval("- 'consultar' para consultar um cliente existente;")
   escreval("- 'atualizar' para atualizar as informações de um cliente existente;")
   escreval("- 'excluir' para excluir um cliente existente;")
   escreval("- 'sair' para sair.")
   escreva("Digite o comando desejado: ")
   leia(comando)

   se comando = "cadastrar" entao
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
   leia(comando)
   se comando = "s" entao
   escreval("Cliente cadastrado com sucesso.")
   escreval(" ")
   rodar <- falso
   fimse
   fimenquanto
   fimse
   
   se comando = "consultar" entao
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
   leia(comando)
   se comando = "n" entao
   rodar <- falso
   fimse
   fimse
   fimenquanto
   fimse
   
   se comando = "atualizar" entao
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
   escreva("Cliente atualizado com sucesso")
   senao
   escreval("Nome não encontrado.")
   escreval(" ")
   fimse
   fimse
   
   se comando = "excluir" entao
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
   senao
   escreval("CPF não encontrado.")
   escreval(" ")
   fimse
   fimse
   
   se comando = "sair" entao
   rodar_programa <- falso
   fimse
   fimenquanto
   
fimalgoritmo
