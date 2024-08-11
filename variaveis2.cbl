      ******************************************************************
      * author wilian albrecht
      * date: 08/08/2024
      * purporse: trabalhar o basico com variaveis
      ******************************************************************
       identification division.
       program-id. variaveis2.
       data division.
       file section.
       working-storage section.
       77 ws-aux-data          pic x(14).
       01 ws-data.
           05 ws-ano-data      pic x(4).
           05 ws-mes-data      pic x(2).
           05 ws-dia-data      pic x(2).
           05 ws-hora-data     pic x(2).
           05 ws-minuto-data   pic x(2).
           05 ws-segundo-data  pic x(2).
           05 filler           pic x(3) value spaces.
       01 ws-data-trasacao.
           05 ws-dia-transacao         pic x(2).
           05 ws-mes-transacao         pic x(2).
           05 ws-ano-transacao         pic x(4).
           05 ws-hora-transacao        pic x(2).
           05 ws-minuto-transacao      pic x(2).
           05 ws-segundo-transacao     pic x(2).
       77 ws-saldo-total               pic 9(5)v99 values 5000.
       77 ws-valor-operacao            pic 9(5)v99.
       77 ws-opcao                     pic x(1).

       procedure division.

           display "1- deposito"
           display "2- saque"
           accept ws-opcao
       
           display "Qual a data do agendamento: "
           accept ws-aux-data

           DISPLAY "Qual o valor da operacao"
           accept ws-valor-operacao

           MOVE FUNCTION CURRENT-DATE to ws-data-trasacao
           move ws-aux-data to ws-data

           if ws-opcao equal '1'
               compute ws-saldo-total = ws-saldo-total + 
      -    ws-valor-operacao
           else 
               compute ws-saldo-total = ws-saldo-total -
      -     ws-valor-operacao
           end-if

           display "Transacao concluida com sucesso."
           display "Data transacao: "ws-dia-transacao"/"ws-mes-transacao
      -    "/"ws-ano-transacao " " ws-hora-transacao ":" 
      -    ws-minuto-transacao ":" ws-segundo-transacao

           display "Saldo total:" ws-saldo-total

           goback.

       end program variaveis2.