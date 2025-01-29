       IDENTIFICATION DIVISION.
       PROGRAM-ID. arquivos-leitura.
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTE ASSIGN TO 
           "./files/clientes.txt"
           organization IS SEQUENTIAL
           FILE STATUS IS WS-FS.
          
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTE.
       01 REG-CLIENTE.
           03 COD-CLIENTE                      PIC 9(03).
           03 FILLER                           PIC X(01).
           03 NOM-CLIENTE                      PIC X(20).
           03 FILLER                           PIC X(01).
           03 TEL-CLIENTE                      PIC X(09).
           03 FILLER                           PIC X(02).

       WORKING-STORAGE SECTION.
       77 WS-FS                                PIC 9(02).
       77 WS-EOF                               PIC 9(01) VALUE ZERO.
       01 WS-DATAS.
           03 WS-DATA-CODE                     PIC 9(03).
           03 FILLER                           PIC X(01).
           03 WS-DATA-NAME                     PIC X(20).
           03 FILLER                           PIC X(01).
           03 WS-DATA-TELE                     PIC X(09).
           03 FILLER                           PIC X(01).
     

       PROCEDURE DIVISION.
           MOVE SPACES TO WS-DATAS.

           OPEN INPUT CLIENTE

    
           IF WS-FS EQUAL 35 THEN 
               DISPLAY " ARQUIVO NÃO ENCONTRADO. "
           ELSE 
               DISPLAY "REGISTROS: "

               PERFORM UNTIL WS-EOF = 1
                   READ CLIENTE INTO WS-DATAS
                        AT END 
                           MOVE 1 TO WS-EOF
                        NOT AT END
                           DISPLAY " CODIGO: " WS-DATA-CODE
                           DISPLAY " NOME: " WS-DATA-NAME
                           DISPLAY " TEL: " WS-DATA-TELE
                           display spaces
                   END-READ
               END-PERFORM

           END-IF.

           CLOSE CLIENTE.
           
           STOP RUN.

       end program arquivos-leitura.
    
