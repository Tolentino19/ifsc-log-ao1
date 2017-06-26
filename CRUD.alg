algoritmo "CRUD"
// Função : Cadastro, Visualização, Atualização e Exclusão
//          de dados de Clientes.
// Autores : Bruno Tolentino de Souza;
//           Edson Mario Marinho;
//           Thiago Neubauer Ocampos.
// Data : 2/6/2017

//Informações importantes: Por padrão o "banco de dados" suporta no máximo 10
//clientes, para aumentar o tamanho do "banco de dados" aumente o número 9 em
//"vetor [0..9]" para o número desejado.
var
   menu,programa,rodar: logico
   i,c,cont,comando: inteiro
   u,s,usuario,uemail,senha,senha_teste,confirma,incpf,tcpf,innome: literal
   cpf,nome,nasci,ender,bairro,estado,natural,fone,email: vetor [0..9] de literal
   
inicio
   //Menu:
   //escreval("Bem vindo ao CRUD!")
   //menu <- verdadeiro
   //enquanto menu = verdadeiro faca
      //escreval("Digite:")
      //escreval("- 1 para criar um usuário.")
     //escreval("- 2 para efetuar login.")
      //escreval("- 3 para sair.")
      //escreva("Digite o comando desejado: ")
      //leia(comando)
      //escolha(comando)

      //caso 1
         //escreva("Digite seu nome de usuário: ")
         //leia(usuario)
         //escreva("Digite sua senha: ")
         //leia(senha)
         //escreval("Usuário cadastrado com sucesso.")
         //escreval(" ")

      //caso 2
         //escreva("Usuário: ")
         //leia(u)
         //escreva("Senha: ")
         //leia(s)
         //se u+s = usuario+senha entao
            //escreval("Logado com sucesso.")
            //menu <- falso
            //programa <- verdadeiro
         //senao
            //escreval("Usuário e/ou senha incorreto(s).")
         //fimse

      //caso 3
            //interrompa

      //outrocaso
            //escreval("Essa opção não existe, tente novamente.")
   
   //fimescolha
   //fimenquanto
   
   //Programa:
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
         cont <- cont + 1
         enquanto rodar = verdadeiro faca
            escreva("Digite o CPF sem pontos e traços: ")
            leia(cpf[cont])
            escreva("Digite o nome: ")
            leia(nome[cont])
            escreva("Digite a data de nascimento(dd/mm/aaaa): ")
            leia(nasci[cont])
            escreva("Digite a naturalidade: ")
            leia(natural[cont])
            escreva("Digite o endereço: ")
            leia(ender[cont])
            escreva("Digite o bairro: ")
            leia(bairro[cont])
            escreva("Digite o estado: ")
            leia(estado[cont])
            escreva("Digite o telefone: ")
            leia(fone[cont])
            escreva("Digite o e-mail: ")
            leia(email[cont])
            escreval("Favor confirmar o dados antes de salvá-los:")
            escreval(" ")
            escreval("CPF: ", cpf[cont])
            escreval("Nome: ", nome[cont])
            escreval("Data de nascimento: ", nasci[cont])
            escreval("Naturalidade: ", natural[cont])
            escreval("Endereço: ", ender[cont])
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

      caso 2
      rodar <- verdadeiro
      enquanto rodar = verdadeiro faca
         escreva("Digite o CPF sem pontos e traços: ")
         leia(incpf)
         para i de 0 ate cont faca
            tcpf <- cpf[i]
            se incpf = tcpf entao
               escreval(" ")
               escreval("CPF: ", cpf[i])
               escreval("Nome: ", nome[i])
               escreval("Data de nascimento: ", nasci[i])
               escreval("Naturalidade: ", natural[i])
               escreval("Endereço: ", ender[i])
               escreval("Bairro: ", bairro[i])
               escreval("Estado: ", estado[i])
               escreval("Telefone: ", fone[i])
               escreval("E-mail: ", email[i])
               escreval(" ")
               rodar <- falso
               interrompa
             fimse
             se i = cont entao
               se incpf = tcpf entao
                  interrompa
               senao
                   escreval("CPF não encontrado.")
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
