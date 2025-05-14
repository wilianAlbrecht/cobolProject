       IDENTIFICATION DIVISION.
       PROGRAM-ID. CORRESPONDING-1.
       
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       working-storage section.
       
           01 WS-REG-01.
               03 WS-NOME              PIC X(20) VALUE SPACES.
               03 FILLER               PIC X(01) VALUE SPACES.
               03 WS-TEL               PIC X(10) VALUE SPACES.  
               03 FILLER               PIC X(01) VALUE SPACES. 
               03 WS-SALARIO           PIC 9(5)V99 VALUE ZEROS.  
               03 FILLER               PIC X(01) VALUE SPACES.
               03 WS-UF                PIC X(2) VALUE SPACES.

           01 WS-REG-02.
               03 WS-SALARIO           PIC 9(5)V99 VALUE ZEROS. 
               03 FILLER               PIC X(01) VALUE SPACES. 
               03 WS-TEL               PIC X(10) VALUE SPACES.   
               03 FILLER               PIC X(01) VALUE SPACES.
               03 WS-NOME              PIC X(20) VALUE SPACES.
               03 FILLER               PIC X(01) VALUE SPACES.
               03 WS-UF                PIC X(2) VALUE SPACES.

       PROCEDURE DIVISION.
           
           MOVE 'MARCOS'               TO WS-NOME     OF WS-REG-01.
           MOVE '1234567890'           TO WS-TEL      OF WS-REG-01.
           MOVE 1234.56                TO WS-SALARIO  OF WS-REG-01.
           MOVE 'SP'                   TO WS-UF       OF WS-REG-01.


           DISPLAY "INFORMACOES REG 1".
           DISPLAY "NOME: " WS-NOME OF WS-REG-01.
           DISPLAY "TELEFONE: " WS-TEL OF WS-REG-01.
           DISPLAY "SALARIO: " WS-SALARIO OF WS-REG-01.
           DISPLAY "UF: " WS-UF OF WS-REG-01.

           MOVE CORR WS-REG-01 TO WS-REG-02.

           DISPLAY "..................................................".
           
           DISPLAY "INFORMACOES REG 2".
           DISPLAY "NOME: " WS-NOME OF WS-REG-02.
           DISPLAY "TELEFONE: " WS-TEL OF WS-REG-02.
           DISPLAY "SALARIO: " WS-SALARIO OF WS-REG-02.
           DISPLAY "UF: " WS-UF OF WS-REG-02.


           DISPLAY WS-REG-02.


           STOP RUN.
       
       END PROGRAM CORRESPONDING-1.