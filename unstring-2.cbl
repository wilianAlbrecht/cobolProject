       identification division.
       program-id. unstring-2.
       data division.
       working-storage section.
       77 WS-POINTER                          PIC 9(02) VALUE ZEROS.
       77 WS-FULL-DATE                        PIC X(10) VALUE SPACES.
       01 WS-DATE.
           03 WS-DATE-DD                      PIC Z(02) VALUE SPACES.
           03 WS-DATE-MM                      PIC Z(02) VALUE SPACES.
           03 WS-DATE-YY                      PIC Z(04) VALUE SPACES.
       
       procedure division.
       main-procedure.
           
           display "DIGITE A DATA: "
           accept WS-FULL-DATE

           unstring WS-FULL-DATE
                    delimited by space
                    into WS-DATE-DD
                         WS-DATE-MM
                         WS-DATE-YY
           end-unstring.

           DISPLAY "DIA: " WS-DATE-DD " MES: " WS-DATE-MM " ANO: " 
                    WS-DATE-YY
           
           STOP RUN.
       end program unstring-2.
       