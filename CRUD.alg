algoritmo "CRUD"
// Fun��o : Cadastro, Visualiza��o, Atualiza��o e Exclus�o de dados dos Clientes.
// Autor : Bruno Tolentino de Souza
// Data : 2/6/2017
var
   rodar_programa: logico
   comando,cpf,nome,nasci,ender,bairro,estado,natural,fone,email: caractere

   procedimento cadastrar
   var
   comando,cpf,nome,nasci,ender,bairro,estado,natural,fone,email: caractere
   inicio
   escreva("Digite o CPF SEM pontos e tra�os: ")
   leia(cpf)
   escreva("Digite o nome: ")
   leia(nome)
   escreva("Digite a data de nascimento(dd/mm/aaaa): ")
   leia(nasci)
   escreva("Digite a naturalidade: ")
   leia(natural)
   escreva("Digite o endere�o: ")
   leia(ender)
   escreva("Digite o bairro: ")
   leia(bairro)
   escreva("Digite o estado: ")
   leia(estado)
   escreva("Digite o telefone: ")
   leia(fone)
   escreva("Digite o e-mail: ")
   leia(email)
   // � FAZER: salvar as informa��es
   escreva("Cliente cadastrado/atualizado com sucesso")
   fimprocedimento

inicio
   rodar_programa <- verdadeiro
   enquanto rodar_programa = verdadeiro faca
   escreval("Bem vindo ao CRUD!")
   escreval("Digite:")
   escreval("- 'cadastrar' para cadastrar um novo cliente;")
   escreval("- 'consultar' para consultar um cliente existente;")
   escreval("- 'atualizar' para atualizar as informa��es de um cliente existente;")
   escreval("- 'excluir' para excluir um cliente existente;")
   escreval("- 'sair' para sair.")
   escreva("Digite o comando desejado: ")
   leia(comando)

   se comando = "cadastrar" entao
   cadastrar
   limpatela
   fimse
   
   se comando = "consultar" entao
   escreva("Digite o CPF SEM pontos e tra�os: ")
   leia(cpf)
   // � FAZER: procurar o cpf consultado no banco de dados
   // � FAZER: caso encontrado apresentar as informa��es
   escreva("CPF n�o encontrado.")
   limpatela
   fimse
   
   se comando = "atualizar" entao
   escreva("Digite o nome: ")
   leia(nome)
   // � FAZER: procurar o nome consultado no banco de dados
   // � FAZER: caso encontrado apresentar as informa��es para cadastrar:
   // cadastrar
   escreva("Nome n�o encontrado.")
   limpatela
   fimse
   
   se comando = "sair" entao
   rodar_programa <- falso
   fimse
   fimenquanto
   
fimalgoritmo