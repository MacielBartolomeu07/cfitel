programa{

  funcao menuinicial()
{
escreva("=========================================================================================================================================================================================================================\n")
escreva("                                                                                                                                                                                                                         \n")
escreva("                                                                                                 _____ _______ ______ _                                                                                                  \n")
escreva("                                                                                                |_   _|__   __|  ____| |                                                                                                 \n")
escreva("                                                                                                  | |    | |  | |__  | |                                                                                                 \n")
escreva("                                                                                                  | |    | |  |  __| | |                                                                                                 \n")
escreva("                                                                                                 _| |_   | |  | |____| |____                                                                                             \n")
escreva("                                                                                                |_____|  |_|  |______|______|                                                                                            \n")
escreva("                                                                                                                                                                                                                         \n")
escreva("                                                                                               SISTEMA DE GESTÃO DA BIBLIOTECA                                                                                           \n")
escreva("                                                                                                                                                                                                                         \n")
escreva("=========================================================================================================================================================================================================================\n")
escreva("                                                                                                COMO FUNCIONA O SISTEMA?                                                                                                 \n")
escreva("                                                             PARA GARANTIR O BOM FUNCIONAMENTO DA BIBLIOTECA E IMPEDIR ACESSOS NÃO AUTORIZADOS AO SISTEMA,                                                               \n")
escreva("                                                                 CADA UTILIZADOR DEVERÁ REGISTAR O SEU NOME E DEFINIR UM PIN NO PRIMEIRO ACESSO.                                                                         \n")
escreva("                                                                NAS PRÓXIMAS UTILIZAÇÕES, BASTARÁ INTRODUZIR O NOME REGISTADO E O RESPETIVO PIN.                                                                         \n")
escreva("                                                         SE OS DADOS ESTIVEREM CORRETOS, O ACESSO AO SISTEMA DE GESTÃO DA BIBLIOTECA SERÁ AUTORIZADO.                                                                    \n")
escreva("=========================================================================================================================================================================================================================\n")
escreva("=========================================================================================================================================================================================================================\n")
}
  funcao menuprincipal()
{
        escreva("                                                                                  ╔══════════════════════════════════════════╗\n")
        escreva("                                                                                  ║               MENU PRINCIPAL             ║\n")
        escreva("                                                                                  ║                     DE                   ║\n")
        escreva("                                                                                  ║             GESTÃO  DA BIBLIOTECA        ║\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ╠══════════════════════════════════════════╣\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ║   [1]  REGISTAR LIVROS                   ║\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ║   [2]  EMPRESTAR LIVRO                   ║\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ║   [3]  DEVOLVER LIVRO                    ║\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ║   [4]  PESQUISAR LIVRO POR TITULO        ║\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ║   [5]  LISTAR LIVROS ESGOTADOS           ║\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ║   [6]  ESTATISTICAS DA BIBLIOTECA        ║\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ║   [7]  SAIR                              ║\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ╠══════════════════════════════════════════╣\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ║             BIBLIOTECA CFITEL            ║\n")
        escreva("                                                                                  ║                                          ║\n")
        escreva("                                                                                  ╚══════════════════════════════════════════╝\n")
        escreva("                                                                                                                              \n")


}
  funcao inicio() 
{   
  cadeia nome, titulos[30], autores[30], titulo_Emprestado
    inteiro PIN_ACTUAL, PIN_INTRODUZIDO 
    inteiro opcao1, i, repeticoes
    inteiro numeroExemplares[30], emprestimos[30]
    inteiro totalEmprestimos, maisRequisitado, livrosEsgotados, maiorEmprestimo
    inteiro totalLivros
    real percentagemEsgotados
    cadeia livroMaisRequisitado

  menuinicial()

escreva("INTRODUZA O NOME QUE QUER QUE SEJA REGISTADO NO SISTEMA: ")
  leia(nome)
escreva("=========================================================================================================================================================================================================================\n")
escreva("=========================================================================================================================================================================================================================\n")
escreva(nome + " INTRODUZA O PIN QUE QUER REGISTAR NO SISTEMA: ")
  leia(PIN_ACTUAL)

             
escreva(nome + " PARA ENTRAR NO SISTEMA DE GESTÃO DA BIBLIOTECA INSIRA O PIN CORRECTO: ")
 leia(PIN_INTRODUZIDO)

          enquanto (PIN_ACTUAL != PIN_INTRODUZIDO) {
          escreva("KOTA " + nome + " O PIN QUE DIGITASTE ESTÁ INCORRECTO. TENTA NOVAMENTE: ")
          leia(PIN_INTRODUZIDO)
          }
          
         
          se(PIN_ACTUAL == PIN_INTRODUZIDO){
          escreva("================================================================================================ACESSO AUTORIZADO==============================================================================================\n") 
           
             faca
              {
            menuprincipal()
             escreva("============================================================================================================================================================================================================\n")
             escreva(nome + " ESCOLHA A OPÇÃO: ")
             leia(opcao1)
            
               escolha(opcao1)
             {
                  caso 1:
                  escreva("======================================\n")
                  escreva(nome + " QUER REGISTAR QUANTOS LIVROS (LEMBRANDO QUE ESTE SISTEMA SÓ SUPORTA MENOS DE 30 LIVROS):   ")
                  leia(repeticoes)
                  escreva("======================================\n")
                  escreva("======================================\n")
                    se(repeticoes < 30){
                    
                      para(i = 0; i < repeticoes; i++){

        escreva("╔════════════════════════════╗\n")
        escreva("   LIVRO " + ( i + 1) + "   \n")
        escreva("╠════════════════════════════╣\n")
        escreva("║                            ║\n")
        escreva("║    TITULO : ")
                        leia(titulos[i])                        
        escreva("║    AUTOR : ")                        
                        leia(autores[i])                     
        escreva("║    NUMERO DE EXEMPLARES : ")
                        leia(numeroExemplares[i])           
        escreva("║                            ║\n")
        escreva("║                            ║\n")
        escreva("║                            ║\n")
        escreva("╚════════════════════════════╝\n")
                  }
                } senao{
                  escreva("KOTA " + nome + " DESCULPA MAS ESTE SISTEMA NÃO SUPORTA MAIS DE 30 LIVROS")
                }
                  pare
                caso 2:
                 escreva("======================== ==========================\n")
                 escreva(nome + " DIGITE O TITULO DO LIVRO QUE QUER EMPRESTAR: ")
                  leia(titulo_Emprestado)
                 escreva("======================== ==========================\n")
                 escreva("======================== ==========================\n")

                   para(i = 0; i < repeticoes; i++)
                     {
                   se(titulo_Emprestado == titulos[i])
                      { 
                   se(numeroExemplares[i] > 0)
                      {

                   numeroExemplares[i] = numeroExemplares[i] - 1
                   emprestimos[i] = emprestimos[i] + 1
                escreva("===================================================================================================================================================================================\n")
                escreva("KOTA " + nome + " EMPRESTIMO SALVO DO LIVRO: " + titulo_Emprestado + " \n")
                escreva("O EMPRÉSTIMO DO LIVRO " + titulo_Emprestado + " FOI REGISTADO COM SUCESSO. O NÚMERO DE EXEMPLARES DISPONÍVEIS FOI ATUALIZADO, AGORA RESTAM : \n")
                escreva("====================================================== "  + numeroExemplares[i] + " ========================================================\n")
            }
            senao
            {
                escreva(nome + " DESCULPA, NÃO TEMOS EXEMPLARES DISPONÍVEIS")
            }

            pare
            }
           }
           pare
            
            caso 3:
            escreva("TITULO DO LIVRO A DEVOLVER: ")
                 leia(titulo_Emprestado)

    para(i = 0; i < repeticoes; i++)
    {
      se(titulo_Emprestado == titulos[i])
        {
      se(emprestimos[i] > 0)
        {
       numeroExemplares[i] = numeroExemplares[i] + 1
       emprestimos[i] = emprestimos[i] - 1
       
       escreva("===============================================================================\n")
       escreva("KOTA " + nome + " DEVOLUCAO REGISTADA COM SUCESSO ._. \n")
       escreva("LIVRO: " + titulos[i] + " \n")
       escreva("KOTA " + nome + " TEMOS: " + numeroExemplares[i]  + " EXEMPLARES DISPONIVEIS ._.\n")
       escreva("================================================================================\n")

            }
            senao
            {
                escreva("KOTA " + nome + " NAO EXISTE NENHUM EMPRESTIMO DESTE LIVRO PARA DEVOLVER.")
            }

            pare
            }
         }
         pare
          caso 4:

    escreva("=====================================================\n")
    escreva(nome + " DIGITE O TITULO DO LIVRO QUE ESTAS A PROCURAR: ")
    leia(titulo_Emprestado)
    escreva("=====================================================\n")

    para(i = 0; i < repeticoes; i++)
    {
        se(titulo_Emprestado == titulos[i])
        {
            escreva("========== LIVRO ENCONTRADO ==========\n")
            escreva("TITULO: " + titulos[i] + "\n")
            escreva("AUTOR: " + autores[i] + "\n")
            escreva("EXEMPLARES DISPONIVEIS: " + numeroExemplares[i] + "\n")

            se(numeroExemplares[i] > 0)
            {
                escreva("ESTADO: KOTA " + nome + " O LIVRO ESTA DISPONIVEL\n")
            }
            senao
            {
                escreva("ESTADO: KOTA " + nome + " O LIVRO ESTA ESGOTADO\n")
            }
            escreva("======================================\n")
            pare
           }
            }
            pare


          caso 5:
            inteiro esgotado = 0

          para(i = 0; i < repeticoes; i++)
         {
          se(numeroExemplares[i] == 0)
          { escreva("==========================================\n")
            escreva(nome + "ESTÃO AQUI OS LIVROS ESGOTADOS: ")
            escreva("==========================================\n")
            escreva("TITULO: " + titulos[i] + "\n")
            escreva("AUTOR: " + autores[i] + "\n")
            escreva("==========================================\n")
            escreva("==========================================\n")
            esgotado = 1
        }
          }

              se(esgotado == 0)
             {
              escreva("==========================================\n")
              escreva("KOTA " + nome + " NAO HA LIVROS ESGOTADOS \n")
              escreva("==========================================\n")
             }
            
             pare
            caso 6:
              totalEmprestimos = 0
    livrosEsgotados = 0
    maiorEmprestimo = 0
    livroMaisRequisitado = ""

    para(i = 0; i < repeticoes; i++)
    {
        totalEmprestimos = totalEmprestimos + emprestimos[i]

        se(numeroExemplares[i] == 0)
        {
            livrosEsgotados = livrosEsgotados + 1
        }

        se(emprestimos[i] > maiorEmprestimo)
        {
            maiorEmprestimo = emprestimos[i]
            livroMaisRequisitado = titulos[i]
        }
    }

    escreva("========== ESTATISTICAS DA BIBLIOTECA ==========\n")
    escreva("TOTAL DE EMPRESTIMOS: " + totalEmprestimos + "\n")

    se(maiorEmprestimo > 0)
    {
        escreva("LIVRO MAIS REQUISITADO: " + livroMaisRequisitado + "\n")
        escreva("NUMERO DE EMPRESTIMOS DESSE LIVRO: " + maiorEmprestimo + "\n")
    }
    senao
    {
        escreva("AINDA NAO FORAM REALIZADOS EMPRESTIMOS.\n")
    }

    escreva("NUMERO DE LIVROS ESGOTADOS: " + livrosEsgotados + "\n")

    se(repeticoes > 0)
    {
        percentagemEsgotados = (livrosEsgotados * 100.0) / repeticoes
        escreva("PERCENTAGEM DE LIVROS ESGOTADOS: " + percentagemEsgotados + "%\n")
    }
    senao
    {
        escreva("AINDA NAO FORAM REGISTADOS LIVROS.\n")
    }

    escreva("================================================\n")
    pare    
                }
              } 
            enquanto(opcao1 != 7)
    }              
  }
}