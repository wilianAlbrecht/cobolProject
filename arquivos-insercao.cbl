       IDENTIFICATION DIVISION.
       PROGRAM-ID. arquivos-insercao.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTE assign TO
           "./files/clientes.txt"
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL
           FILE STATUS IS WS-FS.

       DATA DIVISION.
       FILE SECTION.
       FD CLIENTE.
       01 REG-CLIENTE.
           03 COD-CLIENTE              PIC 9(03).
           03 FILLER                   PIC X(01).
           03 NOM-CLIENTE              PIC X(20).
           03 FILLER                   PIC X(01).
           03 TEL-CLIENTE              PIC X(09).
           03 FILLER                   PIC X(02).

       WORKING-STORAGE SECTION.
       77 WS-FS                        PIC 9(02).

       PROCEDURE DIVISION.
           
           MOVE SPACES TO REG-CLIENTE.

           display "-------- CADASTRO DE CLIENTES ------------"
           SET WS-FS                   TO 0.

           OPEN EXTEND CLIENTE

           IF WS-FS EQUAL 35 THEN 
               OPEN OUTPUT CLIENTE
           END-IF.

           IF WS-FS EQUAL ZEROS
               DISPLAY "INFORME O CoDIGO DO CLIENTE"
               ACCEPT COD-CLIENTE
               DISPLAY "INFORME O NOME DO CLIENTE"
               ACCEPT NOM-CLIENTE
               DISPLAY "INFORME O TELEFONE DO CLIENTE"
               ACCEPT TEL-CLIENTE
           
               WRITE REG-CLIENTE
           
               IF WS-FS NOT EQUAL ZEROS
                   DISPLAY "ERRO AO GRAVAR O REGISTRO."
                   DISPLAY "FILE STATUS: " WS-FS
               END-IF
           ELSE
               DISPLAY "ERRO AO CRIAR O ARQUIVO!"
               DISPLAY "FILE STATUS: " WS-FS
           END-IF.
           
           CLOSE CLIENTE.

           STOP RUN.
       END PROGRAM arquivos-insercao.
       
       