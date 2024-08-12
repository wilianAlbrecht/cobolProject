      ******************************************************************
      * author wilian albrecht
      * date: 11/08/2024
      * purporse: aprender a ler dados de um arquivo
      ******************************************************************
 
       identification division.
       program-id. arquivos.
       environment division.
       input-output section.
       file-control.

       select pessoa assign to './files/registros.txt'

       organization is sequential.
       
       data division.
       file section.
       fd pessoa.
       01 pessoa-file.
           03 pessoa-id       pic 9(2).
           03 pessoa-nome     pic a(10).
           
       working-storage section.
       01 ws-dados            pic x(12) value spaces.
       01 filler redefines ws-dados.
           03 ws-pessoa-id    pic 9(2).
           03 ws-pessoa-nome  pic a(10).
       77 ws-eof              pic a value space.

       procedure division.
       
           open input pessoa.

           perform until ws-eof = 'f'
               read pessoa into ws-dados
                   at end move 'f' to ws-eof
                       not at end 
                           display ws-pessoa-id " - " ws-pessoa-nome
               end-read 
           end-perform.

           close pessoa.

       end program arquivos.
       