      *****************************************************************
      *    author wilian albrecht
      *    Date: 15/08/2024
      *    Purpouse: aprender a manipular strings usadno o unstring
      *****************************************************************

       identification division.
       program-id. unstring.
       data division.
       file section.
       working-storage section.
       77 ws-pointer            pic 9(02) values zeros.
       77 ws-contador-1         pic 9(02) values zeros.
       77 ws-contador-2         pic 9(02) values zeros.
       77 ws-contador-3         pic 9(02) values zeros.
       77 ws-tot-campos         pic 9(02) values zeros.
       77 ws-nome-completo      pic x(60) values spaces.
       77 ws-primeiro-nome      pic x(20) values spaces.
       77 ws-segundo-nome       pic x(20) values spaces.
       77 ws-ultimo-nome        pic x(20) values spaces.


       procedure division.
       
           initialize         ws-pointer
                              ws-contador-1
                              ws-contador-2
                              ws-contador-3
                              ws-primeiro-nome
                              ws-segundo-nome
                              ws-ultimo-nome

           display "digite um nome:"
           accept ws-nome-completo
       
           unstring ws-nome-completo
                    delimited by spaces 
                    into ws-primeiro-nome
                         ws-segundo-nome
                         ws-ultimo-nome
           end-unstring.

           display ws-primeiro-nome " "
                   ws-segundo-nome  " "
                   ws-ultimo-nome   " "


      ****************************exemplo 2*****************************

           initialize         ws-pointer
                              ws-contador-1
                              ws-contador-2
                              ws-contador-3
                              ws-tot-campos
                              ws-primeiro-nome
                              ws-segundo-nome
                              ws-ultimo-nome

           display "digite um nome:"
           accept ws-nome-completo     

           move 1          to ws-pointer

           unstring ws-nome-completo
                    delimited by spaces 
                    into ws-primeiro-nome
                         ws-segundo-nome
                         ws-ultimo-nome
                     with pointer ws-pointer
                     tallying in  ws-tot-campos
           end-unstring.

           display ws-primeiro-nome " "
                   ws-segundo-nome  " "
                   ws-ultimo-nome   " "
                   ws-pointer       " "
                   ws-tot-campos    " "
           
       
           goback.
 
       end program unstring.
       