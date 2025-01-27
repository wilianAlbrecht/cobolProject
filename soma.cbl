       identification division.
       program-id. soma.
       data division.
       working-storage section.
       01 WS-NUMBER-1          PIC 9(010) VALUE ZEROS.
       01 WS-NUMBER-2          PIC 9(010) VALUE ZEROS.
       01 WS-NUMBER-3          PIC 9(010) VALUE ZEROS.
       01 WS-NUMBER-4          PIC 9(010) VALUE ZEROS.
       01 WS-RESULT            PIC z(011) VALUE ZEROS.

       procedure division.
       MAIN-PROCEDURE.
           
           DISPLAY "DIGITE O PRIMEIRO NUMERO"
           ACCEPT WS-NUMBER-1

           DISPLAY "DIGITE O SEGUNDO NUMERO"
           accept WS-NUMBER-2

           display "DIGITE O TERCEIRO NUMERO"
           accept WS-NUMBER-3

           DISPLAY "DIGITE O QUARTO NUMERO"
           accept WS-NUMBER-4
           
           COMPUTE WS-RESULT = WS-NUMBER-1 + WS-NUMBER-2 + WS-NUMBER-3
                   + WS-NUMBER-4

           DISPLAY "A SOMA e " WS-RESULT

           STOP RUN.
       end program soma.
