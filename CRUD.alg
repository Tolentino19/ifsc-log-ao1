algoritmo "CRUD"
// Fun��o : Cadastro, Visualiza��o, Atualiza��o e Exclus�o
//          de dados de Clientes.

// Autores : Bruno Tolentino de Souza;
//           Edson Mario Marinho;
//           Thiago Neubauer Ocampos.

// Data : 2/6/2017

//Informa��es:

//Por padr�o o "banco de dados" suporta no m�ximo 10 clientes, para aumentar
//o tamanho do "banco de dados" aumente o n�mero 10 em "vetor [1..10]" para o
//n�mero desejado e o n�mero do contador no inicio do programa "se cont = 10
//faca" nas fun��es CADASTRAR e DELETAR tamb�m.

//IMPORTANTE:
//A fun��o DELETAR n�o libera mais espa�o no "banco de dados", isso se deve em
//raz�o de que essa fun��o somente sobrescre os valores daquele determinado
//indice nos vetores com literais v�zios: "".
//Para reaproveitar esse espa�o � ideal, ao inv�s de deletar, sobrescrever
//manualmente um cliente com algum tipo de c�digo no lugar do nome e literais
//vazios nos demais campos, assim, posteriormente � poss�vel utilizar aquele
//espa�o para cadastrar um novo cliente por meio da fun��o ATUALIZAR utilizando
//o c�digo que foi usado no lugar do nome.

var
   menu,programa,rodar: logico
   i,c,cont,comando: inteiro
   u,s,usuario,uemail,senha,senha_teste,confirma,uinp,teste: literal
   cpf,nome,nasci,ender,bairro,estado,natural,fone,email: vetor [1..10] de literal
   
inicio
   //Menu:
   escreval("Bem vindo ao CRUD!")
   menu <- verdadeiro
   enquanto menu = verdadeiro faca
      escreval("Digite:")
      escreval("- 1 para criar um usu�rio.")
      escreval("- 2 para efetuar login.")
      escreval("- 3 para sair.")
      escreva("Digite o comando desejado: ")
      leia(comando)
      escolha(comando)

      caso 1
         escreva("Digite seu nome de usu�rio: ")
         leia(usuario)
         escreva("Digite sua senha: ")
         leia(senha)
         escreval("Usu�rio cadastrado com sucesso.")
         escreval(" ")

      caso 2
         escreva("Usu�rio: ")
         leia(u)
         escreva("Senha: ")
         leia(s)
         se u+s = usuario+senha entao
            escreval("Logado com sucesso.")
            menu <- falso
            programa <- verdadeiro
            limpatela
         senao
            escreval("Usu�rio e/ou senha incorreto(s).")
         fimse

      caso 3
            interrompa

      outrocaso
            escreval("Essa op��o n�o existe, tente novamente.")
   
   fimescolha
   fimenquanto
   
   //Programa:
   enquanto programa = verdadeiro faca
      se cont = 8 entao
         escreval("AVISO: Banco de dados est� quase cheio.")
      fimse
      se cont = 9 entao
         escreval("AVISO: S� h� mais 1 espa�o para cliente no banco de dados.")
      fimse
      se cont = 10 entao
         escreval("ATEN��O: BANCO DE DADOS CHEIO!")
      fimse
      escreval("Digite:")
      escreval("- 1 para cadastrar um novo cliente;")
      escreval("- 2 para consultar um cliente existente;")
      escreval("- 3 para atualizar as informa��es de um cliente existente;")
      escreval("- 4 para excluir um cliente existente;")
      escreval("- 5 para sair.")
      escreva("Digite o comando desejado: ")
      leia(comando)
      escolha(comando)

         caso 1
         rodar <- verdadeiro
         se cont = 3 entao
            escreval(" ")
            escreval("N�o h� mais espa�o no banco de dados.")
            escreval(" ")
            rodar <- falso
         senao
            cont <- cont + 1
            enquanto rodar = verdadeiro faca
               escreva("Digite o CPF sem pontos e tra�os: ")
               leia(cpf[cont])
               escreva("Digite o nome: ")
               leia(nome[cont])
               escreva("Digite a data de nascimento(dd/mm/aaaa): ")
               leia(nasci[cont])
               escreva("Digite a naturalidade: ")
               leia(natural[cont])
               escreva("Digite o endere�o: ")
               leia(ender[cont])
               escreva("Digite o bairro: ")
               leia(bairro[cont])
               escreva("Digite o estado: ")
               leia(estado[cont])
               escreva("Digite o telefone: ")
               leia(fone[cont])
               escreva("Digite o e-mail: ")
               leia(email[cont])
               escreval("Favor confirmar o dados antes de salv�-los:")
               escreval(" ")
               escreval("CPF: ", cpf[cont])
               escreval("Nome: ", nome[cont])
               escreval("Data de nascimento: ", nasci[cont])
               escreval("Naturalidade: ", natural[cont])
               escreval("Endere�o: ", ender[cont])
               escreval("Bairro: ", bairro[cont])
               escreval("Estado: ", estado[cont])
               escreval("Telefone: ", fone[cont])
               escreval("E-mail: ", email[cont])
               escreval(" ")
               escreva("Confirma? s/n: ")
               leia(confirma)
               se confirma = "s" entao
                  escreval("Cliente cadastrado com sucesso.")
                  escreval(" ")
                  rodar <- falso
               senao
                  cont <- cont - 1
               fimse
            fimenquanto
         fimse

      caso 2
      rodar <- verdadeiro
      enquanto rodar = verdadeiro faca
         escreva("Digite o CPF sem pontos e tra�os: ")
         leia(uinp)
         para i de 1 ate cont faca
            teste <- cpf[i]
            se uinp = teste entao
               escreval(" ")
               escreval("CPF: ", cpf[i])
               escreval("Nome: ", nome[i])
               escreval("Data de nascimento: ", nasci[i])
               escreval("Naturalidade: ", natural[i])
               escreval("Endere�o: ", ender[i])
               escreval("Bairro: ", bairro[i])
               escreval("Estado: ", estado[i])
               escreval("Telefone: ", fone[i])
               escreval("E-mail: ", email[i])
               escreval(" ")
               rodar <- falso
               interrompa
             fimse
             se i = cont entao
               se uinp = teste entao
                  interrompa
               senao
                   escreval(" ")
                   escreval("CPF n�o encontrado.")
                   escreva("Tentar novamente? s/n: ")
                   leia(confirma)
                   se confirma = "n" entao
                       rodar <- falso
                   fimse
               fimse
             fimse
          fimpara
      fimenquanto

      caso 3
      rodar <- verdadeiro
      enquanto rodar = verdadeiro faca
         escreva("Digite o nome do cliente a ser atualizado: ")
         leia(uinp)
         para i de 1 ate cont faca
            teste <- nome[i]
            se uinp = teste entao
               escreval("O que voc� quer atualizar?")
               escreval("Digite 0 para editar TUDO")
               escreval("Digite 1 para editar CPF")
               escreval("Digite 2 para editar NOME")
               escreval("Digite 3 para editar DATA DE NASCIMENTO")
               escreval("Digite 4 para editar NATURALIDADE")
               escreval("Digite 5 para editar ENDERE�O")
               escreval("Digite 6 para editar BAIRRO")
               escreval("Digite 7 para editar ESTADO")
               escreval("Digite 8 para editar TELEFONE")
               escreval("Digite 9 para editar E-MAIL")
               escreva("Digite o comando desejado: ")
               leia(comando)
               escolha(comando)
               
               caso 0
               escreva("Digite o CPF sem pontos e tra�os: ")
               leia(cpf[i])
               escreva("Digite o nome: ")
               leia(nome[i])
               escreva("Digite a data de nascimento(dd/mm/aaaa): ")
               leia(nasci[i])
               escreva("Digite a naturalidade: ")
               leia(natural[i])
               escreva("Digite o endere�o: ")
               leia(ender[i])
               escreva("Digite o bairro: ")
               leia(bairro[i])
               escreva("Digite o estado: ")
               leia(estado[i])
               escreva("Digite o telefone: ")
               leia(fone[i])
               escreva("Digite o e-mail: ")
               leia(email[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               caso 1
               escreva("Digite o CPF sem pontos e tra�os: ")
               leia(cpf[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               caso 2
               escreva("Digite o nome: ")
               leia(nome[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               caso 3
               escreva("Digite a data de nascimento(dd/mm/aaaa): ")
               leia(nasci[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               caso 4
               escreva("Digite a naturalidade: ")
               leia(natural[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               caso 5
               escreva("Digite o endere�o: ")
               leia(ender[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               caso 6
               escreva("Digite o bairro: ")
               leia(bairro[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               caso 7
               escreva("Digite o estado: ")
               leia(estado[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               caso 8
               escreva("Digite o telefone: ")
               leia(fone[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               caso 9
               escreva("Digite o e-mail: ")
               leia(email[i])
               escreval("Cliente atualizado com sucesso.")
               escreval(" ")
               
               outrocaso
               escreva("Op��o inexistente.")
               
               fimescolha
               
               rodar <- falso
               interrompa
             fimse
             se i = cont entao
               se uinp = teste entao
                  interrompa
               senao
                   escreval(" ")
                   escreval("Nome n�o encontrado.")
                   escreva("Tentar novamente? s/n: ")
                   leia(confirma)
                   se confirma = "n" entao
                       rodar <- falso
                   fimse
               fimse
             fimse
          fimpara
      fimenquanto

      caso 4
      rodar <- verdadeiro
      se cont = 10 entao
         escreval(" ")
         escreval("Aten��o: deletar clientes n�o ir� liberar espa�o no banco de dados.")
         escreval("Experimente sobrescrever um cliente existente com a fun��o ATUALIZAR.")
         escreval(" ")
      fimse
         enquanto rodar = verdadeiro faca
              escreval("AVISO: Essa opera��o n�o pode ser desfeita!")
              escreva("Continuar? s/n: ")
              leia(confirma)
              se confirma = "n" entao
                  rodar <- falso
              senao
                 escreva("Digite o CPF sem pontos e tra�os: ")
                 leia(uinp)
                 para i de 1 ate cont faca
                    teste <- cpf[i]
                    se uinp = teste entao
                        cpf[i] <- ""
                        nome[i] <- ""
                        nasci[i] <- ""
                        ender[i] <- ""
                        bairro[i] <- ""
                        estado[i] <- ""
                        natural[i] <- ""
                        fone[i] <- ""
                        email[i] <- ""
                        escreval("Cliente excluido com sucesso.")
                        rodar <- falso
                        interrompa
                    fimse
                    se i = cont entao
                        se uinp = teste entao
                            interrompa
                        senao
                            escreval(" ")
                            escreval("CPF n�o encontrado.")
                            escreva("Tentar novamente? s/n: ")
                            leia(confirma)
                            se confirma = "n" entao
                                rodar <- falso
                            fimse
                        fimse
                    fimse
                 fimpara
              fimse
          fimenquanto

      caso 5
          programa <- falso

      outrocaso
          escreval("Essa op��o n�o existe, tente novamente.")

      fimescolha
   fimenquanto
   
fimalgoritmo
