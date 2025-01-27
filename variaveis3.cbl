       identification division.
       program-id. variaveis3.
       data division.
       working-storage section.
       01 WS-FULL-DATE                     PIC X(12) VALUE SPACES.
       01 WS-DATE          REDEFINES       WS-FULL-DATE.
           03 WS-DATE-DD                   PIC X(02) VALUE SPACES.
           03 FILLER                       PIC X(01).
           03 WS-DATE-MM                   PIC X(02) VALUE SPACES.
           03 FILLER                       PIC X(01).
           03 WS-DATE-yy                   PIC X(04) VALUE SPACES.

       procedure division.
           
           display "DIGITE A DATA: "
           accept WS-FULL-DATE.

           display "DIA: " WS-DATE-DD " MES: " WS-DATE-MM " ANO: "
                           WS-DATE-YY
           
           STOP RUN.
       end program variaveis3.