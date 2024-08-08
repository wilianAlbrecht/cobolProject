      ******************************************************************
      * author wilian albrecht
      * date: 13/04/2023
      * purporse: trabalhar o basico com variaveis
      ******************************************************************
       identification division.
       program-id. variaveis.
       data division.
       file section.
       working-storage section.
       77 ws-aux-nome      pic x(30).
       77 ws-aux-divida    pic 9(13)V99.
       77 ws-total         pic 9(8).
      *    cria uma mascara de edição para o valor total
       77 ws-ed-total      pic $$,$$$,$$9.99.
       01 ws-reg.
           03 ws-nome.     
               05 ws-primeiro-nome  pic x(15).
               05 ws-ultimo-nome    pic x(15).
           03 ws-telefone           pic x(9).
           03 ws-divida.
               05 ws-vlr-parc       pic 9(5)v99.
               05 ws-qrd-parc       pic 9(3).
               05 ws-parc-pgs       pic 9(3).
           03 ws-sts-divida         pic x.
               88 ws-pg             value "S" "N".

       procedure division.
           display "Nome do clinte: "
           accept ws-aux-nome

           display "Divida: (valor parc + qtd parc + qtd parc pag)"
           accept ws-aux-divida

           display "Telefone:"
           accept ws-telefone

           move ws-aux-nome to ws-nome

           move ws-aux-divida to ws-divida

           display "Primero nome: " ws-primeiro-nome
           display "Ultimo nome: " ws-ultimo-nome
           display "Valor das parcelas: " ws-vlr-parc
           display "quantidade de parcelas: " ws-qrd-parc
           display "parcelas pagas: " ws-parc-pgs
           display "telefone " ws-telefone

      *    calcula o total de dividas usando compute para fazer operação
      /    matematica
           compute ws-total = ws-qrd-parc * ws-vlr-parc
           
           move ws-total to ws-ed-total
       
           display "Total de dividas: " ws-ed-total

      *    limpa a variavel para evitar lixos, //utilizar quando for
      /    usar uma variavel para diversas operaçoes
           move zeros to ws-total
           move zeros to ws-ed-total

           compute ws-total = (ws-parc-pgs - ws-qrd-parc) *
      -    ws-vlr-parc

           move ws-total to ws-ed-total

           display "Divida restante: " ws-ed-total
           
           if ws-total not equal  zeroes then
               move "N" to ws-sts-divida
           else 
               move "S" to ws-sts-divida
           end-if 

           if ws-sts-divida = "S" then
               display "A divida está paga"
           else 
               display "A divida não está paga"
           end-if 

           goback.
       end program variaveis.