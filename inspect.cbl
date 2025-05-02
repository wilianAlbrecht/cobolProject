       identification division.
       program-id. inspect.
       data division.
       file section.
       working-storage section.
           
           77 ws-string                        pic x(26)
                       value " cadastrado em 02/05/2025 ".
            
           01 ws-contador.
               03 ws-contador-1                pic 99.
               03 ws-contador-2                pic 99.
               03 ws-contador-3                pic 99.
               03 ws-contador-4                pic 99.

       procedure division.
       main-procedure.

           display "String orinal:" 
           display ws-string


      ************************ contando caracteres ********************

           initialize ws-contador.

           inspect ws-string tallying ws-contador-1 for all zeros
           display "contem " ws-contador-1 " zeros"

           inspect ws-string tallying ws-contador-2 for all spaces
           display "contem " ws-contador-2 " espaços"

           inspect ws-string tallying ws-contador-3 for all 'a'
           display "contem " ws-contador-3 " as"

           inspect ws-string tallying ws-contador-4 for characters
                   before initial zero
           display "contem " ws-contador-4 " caracteres antes do "
                   "primeiro zero"

           move zeros      to ws-contador-4    
           inspect ws-string tallying ws-contador-4 for characters
                   after initial zero
           display "contem " ws-contador-4 " caracters depois do "
                   "ultimo zero"
           

      *************** substituindo caracteres *************************

           initialize ws-contador.


           display "trocando os as por x"
           inspect ws-string replacing all 'a' by 'X'
           display ws-string

           display "contando os / dentro de um range"
           inspect ws-string tallying ws-contador-1 for all "/"
                   after 'm ' before ' '
           display "caracteres dentro do range " ws-contador-1
       
           display "fazendo a alteração dos / dentro de um range"
           inspect ws-string replacing all "/" by "-" 
                   after "m " before " "
           display "string depois de alteração " ws-string
           
           stop run.
        
       end program inspect.