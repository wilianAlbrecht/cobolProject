       identification division.
       program-id. perform-1.
       data division.
       working-storage section.
       01 WS-DATE                  PIC X(10) VALUE SPACES.
       01 WS-DATE-R    REDEFINES   WS-DATE.
           03 WS-DATE-DD           PIC 9(02).
           03 FILLER               PIC X.
           03 WS-DATE-MM           PIC 9(02).
           03 FILLER               PIC X.
           03 WS-DATE-YY           PIC 9(04).
       77 WS-MONTH-NAME            PIC X(15) VALUE SPACES.
       77 WS-KEY-PRESSED           PIC X(1)  VALUE SPACES.

       procedure division.

      ******************************************************************
      *    INICIALIZA AS VARIAVEIS E CHAMA OS DEMAIS PARAGRAFOS
      ******************************************************************
       P100-START.
           display "INICIO DO PROCESSAMENTO ".

           MOVE SPACES         TO WS-DATE
                                  WS-MONTH-NAME.

           display "informe uma data ".
           accept WS-DATE.

           PERFORM P200-CHECK-MONTH        THRU P200-CHECK-MONTH-END.
           PERFORM P300-SHOW-MONTH         THRU P300-SHOW-MONTH-END.
           PERFORM P900-END-APLICATION     THRU P900-END-APLICATION-END.

       P100-START-END.

      ******************************************************************
      *    VERIFICA O MES DE ACORDO DO O NUMERO
      ******************************************************************
       P200-CHECK-MONTH.
           DISPLAY "VERIFICANDO O MES INFORMADO..."
           
           EVALUATE WS-DATE-MM
               WHEN 01
                    MOVE "JANEIRO"             TO WS-MONTH-NAME
               WHEN 02
                    MOVE "FEVEREIRO"           TO WS-MONTH-NAME
               WHEN 03
                    MOVE "MARCO"               TO WS-MONTH-NAME
               WHEN 04
                    MOVE "ABRIL"               TO WS-MONTH-NAME
               WHEN 05
                    MOVE "MAIO"                TO WS-MONTH-NAME
               WHEN 06
                    MOVE "JUNHO"               TO WS-MONTH-NAME
               WHEN 07
                    MOVE "JULHO"               TO WS-MONTH-NAME
               WHEN 08
                    MOVE "AGOSTO"              TO WS-MONTH-NAME
               WHEN 09
                    MOVE "SETEMBRO"            TO WS-MONTH-NAME
               WHEN 10
                    MOVE "OUTUBRO"             TO WS-MONTH-NAME
               WHEN 11
                    MOVE "NOVEMBRO"            TO WS-MONTH-NAME
               WHEN 12
                    MOVE "DEZEMBRO"            TO WS-MONTH-NAME
           END-EVALUATE.
                    
           
       P200-CHECK-MONTH-END.

      ******************************************************************
      *    MOSTRA A DATA COM O MES POE EXTENSO
      ******************************************************************
       P300-SHOW-MONTH.
           display "A DATA E " WS-DATE-DD " DE " WS-MONTH-NAME " DE "
                           WS-DATE-YY.

       P300-SHOW-MONTH-END.      

      ******************************************************************
      *    FINALIZA OS PROGRAMA
      ******************************************************************
       P900-END-APLICATION.
           
           DISPLAY "TECLE <C> PARA CONTINUAR OU <T> TERMINAR".
           ACCEPT WS-KEY-PRESSED.

           IF WS-KEY-PRESSED = "C"         THEN 
               PERFORM P100-START          THRU P100-START-END
           ELSE IF WS-KEY-PRESSED = "T"    THEN
               STOP RUN   
           ELSE 
               PERFORM P900-END-APLICATION THRU P900-END-APLICATION-END
           END-IF.
               
       P900-END-APLICATION-END.
       END PROGRAM perform-1.
