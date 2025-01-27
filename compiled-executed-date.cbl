       identification division.
       program-id.             compiled-executed-date.
       data division.
       working-storage section.

       01  800-WHEN-COMPILIED.
           05 800-COMPILED-DATE-YYYY           PIC X(04) VALUES SPACES.
           05 800-COMPILED-DATE-MM             PIC X(02) VALUES SPACES.
           05 800-COMPILED-DATE-DD             PIC X(02) VALUES SPACES.
           05 800-COMPILED-TIME-HH             PIC X(02) VALUES SPACES.
           05 800-COMPILED-TIME-MM             PIC X(02) VALUES SPACES.
           05 800-COMPILED-TIME-SS             PIC X(02) VALUES SPACES.
           05 FILLER                           PIC X(07) VALUES SPACES.
       01  800-CURRENT-DATE.
           05 800-CURRENT-DATE-YYYY            PIC X(04) VALUES SPACES.
           05 800-CURRENT-DATE-MM              PIC X(02) VALUES SPACES.
           05 800-CURRENT-DATE-DD              PIC X(02) VALUES SPACES.
           05 800-CURRENT-TIME-HH              PIC X(02) value spaces.
           05 800-CURRENT-TIME-MM              PIC X(02) VALUES SPACES.
           05 800-CURRENT-TIME-SS              PIC X(02) VALUES SPACES.
           05 FILLER                           PIC X(07) VALUES SPACES.
       01  WS-DATA-ATUAL.
           05 WS-DT-ATUAL                      PIC X(21) VALUE SPACES.
           05 WS-DT-ATUAL-R REDEFINES WS-DT-ATUAL.
               08 WS-DT-AA                     PIC X(04).
               08 WS-DT-MM                     PIC X(02).
               08 WS-DT-DD                     PIC X(02).
               08 WS-TM-HH                     PIC X(02).
               08 WS-TM-MM                     PIC X(02).
               08 WS-TM-SS                     PIC X(02).
               08 FILLER                       PIC X(07).
           
       procedure division.

           MOVE function when-compiled TO 800-WHEN-COMPILIED
           MOVE function current-date  TO 800-CURRENT-DATE
           MOVE 800-CURRENT-DATE       TO WS-DATA-ATUAL
           
           DISPLAY 'COMPILED = '
               800-COMPILED-DATE-YYYY '/'
               800-COMPILED-DATE-MM   '/'
               800-COMPILED-DATE-DD   space
               800-COMPILED-TIME-HH ':'
               800-COMPILED-TIME-MM ':'
               800-COMPILED-TIME-SS space

           display 'EXECUTED = '
               800-CURRENT-DATE-YYYY '/'
               800-CURRENT-DATE-MM   '/'
               800-CURRENT-DATE-DD   space
               800-CURRENT-TIME-HH ':'
               800-CURRENT-TIME-MM ':'
               800-CURRENT-TIME-SS space


           display 'EXECUTION DATE= '
               WS-DT-DD '/'
               WS-DT-MM '/'
               WS-DT-AA space
               WS-TM-HH ':'
               WS-TM-MM ':'
               WS-TM-SS space

           DISPLAY 'EXECUTION COMPLITED'
           STOP RUN.

                   
